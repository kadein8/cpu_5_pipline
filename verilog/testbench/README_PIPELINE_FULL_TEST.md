# CPU Pipeline 完整指令测试

## 测试概述

`cpu_pipeline_full_tb.v` 是一个全面的流水线测试文件，测试了14条RISC-V指令在五级流水线中的执行。

## 测试的14条指令

### 1. **addi** - 立即数加法 (I型指令)
```assembly
addi x1, x0, 10      # x1 = 10
addi x2, x0, 20      # x2 = 20
addi x3, x0, 5       # x3 = 5
```

### 2. **add** - 有符号加法 (R型指令)
```assembly
add x4, x1, x2       # x4 = 10 + 20 = 30
add x5, x4, x3       # x5 = 30 + 5 = 35
```

### 3. **sub** - 有符号减法 (R型指令)
```assembly
sub x6, x2, x1       # x6 = 20 - 10 = 10
sub x7, x5, x3       # x7 = 35 - 5 = 30
```

### 4. **and** - 按位与 (R型指令)
```assembly
addi x8, x0, 255     # x8 = 0xFF
addi x9, x0, 15      # x9 = 0x0F
and x10, x8, x9      # x10 = 0xFF & 0x0F = 15
```

### 5. **or** - 按位或 (R型指令)
```assembly
or x11, x8, x9       # x11 = 0xFF | 0x0F = 255
```

### 6. **ori** - 立即数按位或 (I型指令)
```assembly
ori x12, x1, 5       # x12 = 10 | 5 = 15
```

### 7. **sll** - 逻辑左移 (R型指令)
```assembly
addi x13, x0, 2      # x13 = 2 (移位量)
sll x14, x3, x13     # x14 = 5 << 2 = 20
```

### 8. **srl** - 逻辑右移 (R型指令)
```assembly
srl x15, x2, x13     # x15 = 20 >> 2 = 5
```

### 9. **sw** - 字存储 (S型指令)
```assembly
addi x16, x0, 256    # x16 = 256 (内存地址)
sw x4, 0(x16)        # mem[256] = 30
sw x5, 4(x16)        # mem[260] = 35
```

### 10. **lw** - 字加载 (I型指令)
```assembly
lw x17, 0(x16)       # x17 = mem[256] = 30
lw x18, 4(x16)       # x18 = mem[260] = 35
```

### 11. **beq** - 等于转移 (B型指令)
```assembly
addi x19, x0, 100    # x19 = 100
addi x20, x0, 100    # x20 = 100
beq x19, x20, target # 如果 x19 == x20，跳转
addi x21, x0, 99     # 不应执行
target:
addi x21, x0, 200    # x21 = 200 (应该执行)
```

### 12. **bne** - 不等于跳转 (B型指令)
```assembly
addi x22, x0, 50     # x22 = 50
addi x23, x0, 60     # x23 = 60
bne x22, x23, target # 如果 x22 != x23，跳转
addi x24, x0, 88     # 不应执行
target:
addi x24, x0, 77     # x24 = 77 (应该执行)
```

### 13. **jal** - 跳转并链接 (J型指令)
```assembly
jal x1, target       # x1 = PC+4, 跳转到 target
addi x26, x0, 111    # 不应执行
target:
addi x26, x0, 222    # x26 = 222 (应该执行)
```

### 14. **jalr** - 跳转并链接寄存器版 (I型指令)
```assembly
addi x27, x0, 0      # x27 = 0
addi x28, x0, 176    # x28 = 目标地址
jalr x26, x28, 0     # x26 = PC+4, 跳转到 x28+0
addi x29, x0, 333    # 不应执行
target:
addi x29, x0, 444    # x29 = 444 (应该执行)
```

## 测试覆盖的指令类型

- **R型指令**: add, sub, and, or, sll, srl
- **I型指令**: addi, ori, lw, jalr
- **S型指令**: sw
- **B型指令**: beq, bne
- **J型指令**: jal

## 预期结果

测试完成后，寄存器的预期值：

| 寄存器 | 预期值 | 测试指令 |
|--------|--------|----------|
| x1     | PC+4   | jal      |
| x2     | 20     | addi     |
| x3     | 5      | addi     |
| x4     | 30     | add      |
| x5     | 35     | add      |
| x6     | 10     | sub      |
| x7     | 30     | sub      |
| x10    | 15     | and      |
| x11    | 255    | or       |
| x12    | 15     | ori      |
| x14    | 20     | sll      |
| x15    | 5      | srl      |
| x17    | 30     | lw       |
| x18    | 35     | lw       |
| x21    | 200    | beq      |
| x24    | 77     | bne      |
| x26    | 222    | jal      |
| x29    | 444    | jalr     |
| x31    | 0xFFF  | 完成标志 |

## 运行测试

### 方法1: 使用Makefile (推荐)

```bash
# 完整流程 (编译 + 仿真 + 波形查看)
make run_pipeline_full

# 仅编译
make compile_pipeline_full

# 仅仿真
make sim_pipeline_full

# 仅查看波形
make verdi_pipeline_full
```

### 方法2: 手动运行

```bash
# 编译
vcs -full64 -timescale=1ns/1ps -debug_access+all \
    core/config.v \
    core/registers.v \
    core/inst_fetch.v \
    core/inst_decoder.v \
    core/ex_alu.v \
    core/ex_branch.v \
    core/ex_csr.v \
    core/ex_mem.v \
    core/cpu_pipeline.v \
    testbench/cpu_pipeline_full_tb.v \
    -o simv

# 运行仿真
./simv

# 查看波形
verdi -ssf /tmp/cpu_v_build_kid/pipeline_full.fsdb
```

## 测试特点

1. **数据冒险测试**: 连续的指令存在数据依赖，测试流水线的转发机制
2. **控制冒险测试**: 分支和跳转指令测试流水线的冲刷和跳转处理
3. **内存访问测试**: sw/lw指令测试内存读写功能
4. **完整覆盖**: 涵盖所有基本指令类型

## 日志输出

仿真过程中会输出：
- 每个时钟周期的PC和指令
- 内存写操作的详细信息
- 最终的寄存器值和预期值对比

查看日志：
```bash
cat vlogs/sim_pipeline_full.log
```

## 与简化版测试的对比

| 特性 | 简化版 (cpu_pipeline_simple_tb.v) | 完整版 (cpu_pipeline_full_tb.v) |
|------|-----------------------------------|----------------------------------|
| 指令数量 | 5条 | 14条 |
| 指令类型 | I型, R型 | R型, I型, S型, B型, J型 |
| 测试重点 | 基本数据通路 | 完整指令集覆盖 |
| 内存操作 | 无 | 有 (lw/sw) |
| 分支跳转 | 无 | 有 (beq/bne/jal/jalr) |
