# 流水线波形调试指南

## 基于实际模块信号的波形查看顺序

### 第一步：打开波形
```bash
cd d:\竞赛\cpu-v-master\verilog
make verdi_pipeline_full
```

---

## 1️⃣ 顶层控制信号（必看）

### 信号路径：
```
cpu_pipeline_full_tb.clk
cpu_pipeline_full_tb.rst_n
cpu_pipeline_full_tb.cur_inst_addr
cpu_pipeline_full_tb.inst_data
cpu_pipeline_full_tb.inst_mem_ready
```

### 预期变化：
- **clk**: 10ns周期，每5ns翻转
- **rst_n**: 前20ns为0（复位），之后为1
- **cur_inst_addr**: PC地址，从0x00开始，每条指令+4
- **inst_data**: 当前取到的指令机器码
- **inst_mem_ready**: 指令内存就绪信号，应该一直为1

---

## 2️⃣ IF级 - 取指阶段

### 信号路径：
```
cpu_pipeline.inst_fetch.cur_inst_addr      # 当前PC
cpu_pipeline.inst_fetch.next_inst_addr     # 下一条PC
cpu_pipeline.inst_fetch.inst_code          # 取到的指令
cpu_pipeline.inst_fetch.inst_mem_read_en   # 读使能
cpu_pipeline.inst_fetch.inst_ready         # 指令就绪
cpu_pipeline.inst_fetch.control_hazard     # 控制冒险标志
cpu_pipeline.inst_fetch.fetch_stop         # 取指暂停
```

### 预期行为：
- **cur_inst_addr**: 顺序递增 0x00 → 0x04 → 0x08...
- **next_inst_addr**: 总是 cur_inst_addr + 4
- **inst_code**: 对应地址的指令
- **fetch_stop**: 遇到分支/跳转指令时为1
- **control_hazard**: 分支预测不跳转时为1

### 关键时刻：
- **beq指令 (PC=0x58)**: fetch_stop=1，等待分支结果
- **jal指令 (PC=0x88)**: fetch_stop=1，等待跳转地址

---

## 3️⃣ ID级 - 译码阶段

### 信号路径：
```
cpu_pipeline.inst_decoder.instruction_code  # 输入指令
cpu_pipeline.inst_decoder.en                # 译码使能
cpu_pipeline.inst_decoder.rd                # 目标寄存器
cpu_pipeline.inst_decoder.rs1               # 源寄存器1
cpu_pipeline.inst_decoder.rs2               # 源寄存器2
cpu_pipeline.inst_decoder.imm_1231          # 立即数[31:12]
cpu_pipeline.inst_decoder.inst_flags        # 指令类型标志(48位)
```

### 指令标志位（inst_flags）：
这是一个48位的向量，每一位代表一种指令类型：
- inst_flags[0]: add
- inst_flags[1]: sub
- inst_flags[2]: and
- inst_flags[3]: or
- inst_flags[4]: sll
- inst_flags[5]: srl
- 等等...

### 预期行为：
- **rd/rs1/rs2**: 正确提取寄存器编号
- **imm_1231**: 立即数的高20位
- **inst_flags**: 对应指令类型的位为1

### 示例：
```
指令: addi x1, x0, 10 (0x00a00093)
rd = 1, rs1 = 0, imm = 10
inst_flags中addi对应的位为1
```

---

## 4️⃣ EX级 - 执行阶段

### ALU信号：
```
cpu_pipeline.ex_alu.operand_a       # 操作数A
cpu_pipeline.ex_alu.operand_b       # 操作数B
cpu_pipeline.ex_alu.alu_result      # ALU结果
cpu_pipeline.ex_alu.alu_op          # ALU操作码
```

### 分支信号：
```
cpu_pipeline.ex_branch.rs1_data         # 分支比较数据1
cpu_pipeline.ex_branch.rs2_data         # 分支比较数据2
cpu_pipeline.ex_branch.branch_jmp_en    # 分支跳转使能
cpu_pipeline.ex_branch.pc_next_out      # 分支目标地址
```

### 预期行为：

#### 算术指令 (add x4, x1, x2):
```
operand_a = 10 (x1的值)
operand_b = 20 (x2的值)
alu_result = 30
```

#### 分支指令 (beq x19, x20, target):
```
rs1_data = 100 (x19的值)
rs2_data = 100 (x20的值)
branch_jmp_en = 1 (相等，跳转)
pc_next_out = 目标地址
```

---

## 5️⃣ MEM级 - 访存阶段

### 信号路径：
```
cpu_pipeline.read_en            # 读使能
cpu_pipeline.write_en           # 写使能
cpu_pipeline.mem_addr           # 访存地址
cpu_pipeline.wdata              # 写数据
cpu_pipeline.rdata              # 读数据
cpu_pipeline.mem_ready          # 内存就绪
cpu_pipeline.byte_size          # 访问字节数
```

### 预期行为：

#### sw指令 (sw x4, 0(x16)):
```
write_en = 1
mem_addr = 0x100 (x16的值)
wdata = 30 (x4的值)
```

#### lw指令 (lw x17, 0(x16)):
```
read_en = 1
mem_addr = 0x100
rdata = 30 (从内存读出)
```

---

## 6️⃣ WB级 - 写回阶段

### 寄存器堆信号：
```
cpu_pipeline.registers.reg_file[1]   # x1寄存器
cpu_pipeline.registers.reg_file[2]   # x2寄存器
...
cpu_pipeline.registers.reg_file[31]  # x31寄存器
```

### 写回控制（需要查看pipeline内部）：
```
cpu_pipeline.wb_rd_addr         # 写回寄存器地址
cpu_pipeline.wb_rd_data         # 写回数据
cpu_pipeline.wb_rd_out_en       # 写回使能
```

### 预期变化时间线：

| 时间(ns) | PC | 指令 | 寄存器变化 |
|---------|-----|------|-----------|
| ~35 | 0x00 | addi x1, x0, 10 | x1 → 10 |
| ~45 | 0x04 | addi x2, x0, 20 | x2 → 20 |
| ~55 | 0x08 | addi x3, x0, 5 | x3 → 5 |
| ~65 | 0x0C | add x4, x1, x2 | x4 → 30 |
| ~75 | 0x10 | add x5, x4, x3 | x5 → 35 |

---

## 7️⃣ 流水线控制信号

### 信号路径：
```
cpu_pipeline.jmp_en             # 跳转使能
cpu_pipeline.jmp_pc             # 跳转目标地址
cpu_pipeline.fetch_en           # 取指使能
cpu_pipeline.decoder_en         # 译码使能
```

### 流水线寄存器：
```
cpu_pipeline.if_id_inst         # IF/ID流水线寄存器（指令）
cpu_pipeline.if_id_pc           # IF/ID流水线寄存器（PC）
cpu_pipeline.id_ex_inst_flags   # ID/EX流水线寄存器（指令标志）
```

---

## 8️⃣ 关键测试点波形验证

### 测试1: 数据冒险 (add x5, x4, x3)
**时间**: ~75ns, PC=0x10

**查看信号**:
- x4刚被写入30
- add指令需要读取x4
- 检查是否有转发或暂停机制

### 测试2: beq跳转 (PC=0x58)
**时间**: ~335ns

**查看信号**:
```
ex_branch.rs1_data = 100
ex_branch.rs2_data = 100
ex_branch.branch_jmp_en = 1
jmp_en = 1
jmp_pc = 0x68
下一个周期: cur_inst_addr = 0x68
```

### 测试3: sw/lw (PC=0x40-0x4C)
**时间**: ~195-245ns

**查看信号**:
```
sw时: write_en=1, mem_addr=0x100, wdata=30
lw时: read_en=1, mem_addr=0x100, rdata=30
最终: x17=30
```

### 测试4: jal跳转 (PC=0x88)
**时间**: ~455ns

**查看信号**:
```
jmp_en = 1
jmp_pc = 0x98
x1 = 0x8C (返回地址 = PC+4)
下一个周期: cur_inst_addr = 0x98
```

---

## 9️⃣ 常见问题排查

### 问题1: PC不递增
**查看**:
- `inst_fetch.inst_mem_read_en`
- `inst_fetch.fetch_stop`
- `fetch_en`

### 问题2: 寄存器值错误
**查看**:
- ALU的operand_a/b和result
- 写回的wb_rd_addr和wb_rd_data
- 写回使能wb_rd_out_en

### 问题3: 分支不跳转
**查看**:
- `ex_branch.branch_jmp_en`
- `jmp_en`和`jmp_pc`
- 分支比较的rs1_data和rs2_data

### 问题4: 内存访问失败
**查看**:
- `mem_addr`是否正确
- `read_en`/`write_en`是否有效
- `mem_ready`是否为1

---

## 🔟 Verdi使用技巧

1. **添加信号**: 在Source Browser中找到信号，右键 → Add to Waveform
2. **搜索信号**: Ctrl+F 搜索信号名
3. **查看数值**: 右键信号 → Radix → 选择显示格式（Hex/Dec/Bin）
4. **添加标记**: 右键时间轴 → Add Marker
5. **查看层次**: 在Hierarchy窗口展开模块树
6. **跳转定义**: 双击信号名跳转到源码定义
7. **波形对比**: 选中多个信号，右键 → Compare

---

## 推荐查看顺序

1. **第一遍**: 只看顶层信号（clk, rst_n, PC, inst）
2. **第二遍**: 加上寄存器堆（x1-x31）
3. **第三遍**: 加上ALU和分支信号
4. **第四遍**: 加上内存访问信号
5. **第五遍**: 加上流水线控制信号

每一遍都先整体浏览，发现异常再深入查看具体模块。
