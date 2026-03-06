# CPU 五级流水线测试说明

## 你的 CPU 架构

**这是一个五级流水线 CPU，不是单周期也不是多周期！**

### 架构对比

| 类型 | 特点 | CPI | 吞吐量 |
|------|------|-----|--------|
| **单周期** | 一条指令在一个时钟周期完成所有阶段 | 1 | 低（时钟周期长） |
| **多周期** | 一条指令需要多个时钟周期，每个周期执行一个阶段 | 3-5 | 中等 |
| **五级流水线** | 多条指令同时执行，每条指令分5个阶段 | ~1（理想） | 高 |

### 你的 CPU 五级流水线

```
IF (取指) → ID (译码) → EX (执行) → MEM (访存) → WB (写回)
   ↓           ↓           ↓           ↓           ↓
IF/ID寄存器  ID/EX寄存器  EX/MEM寄存器  MEM/WB寄存器
```

**特点：**
- 每个时钟周期可以同时处理 5 条指令（理想情况）
- 有流水线寄存器保存中间结果
- 有冒险检测和前递（forwarding）逻辑
- 有分支预测机制

## 测试方法

### 方法 1：完整测试（包含 cache 和 sys_bus）

```bash
make run_cpu
```

**问题：** cache 需要突发传输 4 次，testbench 需要正确响应每次地址变化。

### 方法 2：简化测试（仅测试流水线，推荐！）

```bash
make run_pipeline
```

**优点：**
- 绕过复杂的 cache 和 sys_bus
- 指令内存立即响应，无延迟
- 更容易观察流水线行为
- 适合验证流水线逻辑

## 简化测试的指令序列

```assembly
addi x1, x0, 1    # x1 = 1
addi x2, x0, 2    # x2 = 2
add  x3, x1, x2   # x3 = x1 + x2 = 3
addi x4, x3, 10   # x4 = x3 + 10 = 13
sub  x5, x4, x1   # x5 = x4 - x1 = 12
```

## 波形检验顺序

### 1. 基础信号
- `clk` - 时钟
- `rst_n` - 复位

### 2. 取指阶段 (IF)
- `cur_inst_addr` - 当前 PC（应该递增：0, 4, 8, 12...）
- `next_inst_addr` - 下一个 PC
- `inst_data` - 取到的指令
- `inst_mem_ready` - 指令就绪

### 3. 译码阶段 (ID)
- `cpu_pipeline.if_id_inst_code` - IF/ID 寄存器中的指令
- `cpu_pipeline.inst_decode_out` - 译码输出

### 4. 执行阶段 (EX)
- `cpu_pipeline.id_ex_inst_flags` - ID/EX 寄存器中的指令标志
- `cpu_pipeline.alu_rd_data` - ALU 计算结果

### 5. 访存阶段 (MEM)
- `cpu_pipeline.mem_rd_data` - 访存结果

### 6. 写回阶段 (WB)
- `cpu_pipeline.wb_rd` - 写回的寄存器地址
- `cpu_pipeline.wb_rd_data` - 写回的数据

### 7. 流水线控制
- `fetch_en` - 流水线是否前进
- `ex_stop` - 执行是否停止
- `pipe_flush` - 流水线是否冲刷

## 当前问题总结

你的 `cpu_tb.v` 测试遇到的问题：

1. **Cache 需要突发传输**：每次取指需要传输 4 个 32 位字（128 位 cache line）
2. **地址变化检测**：testbench 需要在每次地址变化时产生新的 `ready` 上升沿
3. **时序复杂**：sys_bus 状态机等待多次握手

**建议：使用 `make run_pipeline` 进行简化测试！**

## Makefile 新增目标

```bash
make compile_pipeline  # 编译简化的流水线测试
make sim_pipeline      # 运行简化的流水线仿真
make verdi_pipeline    # 打开 Verdi 查看波形
make run_pipeline      # 完整流程（推荐）
```
