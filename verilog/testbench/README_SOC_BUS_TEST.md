# SoC外设和总线测试

## 测试概述

`soc_peripheral_bus_tb.v` 是一个完整的SoC外设和总线测试，基于五级流水线CPU，测试CPU通过总线访问各种外设（RAM、Flash、GPIO等）。

## 测试架构

```
┌─────────────────────────────────────────────────┐
│              digital_soc (SoC顶层)              │
│  ┌──────────────┐        ┌──────────────────┐  │
│  │   cpu_top    │◄──────►│ peripherals_bus  │  │
│  │ (五级流水线)  │        │   (外设总线)      │  │
│  └──────────────┘        └──────────────────┘  │
└─────────────────────────────────────────────────┘
         │                          │
         ▼                          ▼
    ┌─────────┐              ┌──────────┐
    │  Flash  │              │   RAM    │
    │ (指令)   │              │  (数据)   │
    └─────────┘              └──────────┘
                                   │
                             ┌──────────┐
                             │   GPIO   │
                             └──────────┘
```

## 测试的外设

### 1. Flash (指令存储器)
- **地址范围**: 0x00000000 - 0x00000FFF
- **功能**: 存储CPU执行的指令
- **测试**: 从Flash读取指令并执行

### 2. RAM (数据存储器)
- **地址范围**: 0x10000000 - 0x3FFFFFFF
- **功能**: 数据读写
- **测试**:
  - 写入数据到RAM
  - 从RAM读取数据
  - 验证读写一致性

### 3. GPIO (通用输入输出)
- **地址范围**: 0xC0000000 - 0xC0000FFF
- **功能**: 数字IO控制
- **寄存器映射**:
  - 偏移量0: GPIO配置寄存器（0=输入，1=输出）
  - 偏移量4: GPIO设置寄存器（设置输出值）
  - 偏移量8: GPIO读取寄存器（读取GPIO值）
- **测试**:
  - 配置GPIO为输出模式
  - 写GPIO输出值
  - 读GPIO输入值

## 测试程序

测试程序包含以下指令序列：

### 测试1: RAM写入
```assembly
lui x10, 0x10000      # x10 = RAM基地址 0x10000000
addi x11, x0, 100     # x11 = 100
sw x11, 0(x10)        # mem[0x10000000] = 100
```

### 测试2: RAM读取
```assembly
lw x12, 0(x10)        # x12 = mem[0x10000000] = 100
```

### 测试3: GPIO配置和写入
```assembly
lui x13, 0xC0000      # x13 = GPIO基地址 0xC0000000
addi x14, x0, 0xFF    # x14 = 0xFF
sw x14, 0(x13)        # GPIO配置 = 0xFF (所有引脚配置为输出)
addi x20, x0, 0xAA    # x20 = 0xAA
sw x20, 4(x13)        # GPIO输出 = 0xAA (偏移量4)
```

### 测试4: GPIO读取
```assembly
lw x15, 8(x13)        # x15 = GPIO输入 (偏移量8)
```

### 测试5: 连续RAM访问
```assembly
addi x16, x0, 200     # x16 = 200
sw x16, 4(x10)        # mem[0x10000004] = 200
lw x17, 4(x10)        # x17 = mem[0x10000004] = 200
```

## 预期结果

### RAM内容
| 地址 | 预期值 | 说明 |
|------|--------|------|
| 0x10000000 | 100 (0x64) | 第一次写入 |
| 0x10000004 | 200 (0xC8) | 第二次写入 |

### 寄存器值
| 寄存器 | 预期值 | 说明 |
|--------|--------|------|
| x10 | 0x10000000 | RAM基地址 |
| x11 | 100 | 写入RAM的值 |
| x12 | 100 | 从RAM读取的值 |
| x13 | 0xC0000000 | GPIO基地址 |
| x14 | 0xFF | GPIO配置值 |
| x15 | GPIO输入值 | GPIO读取值 |
| x16 | 200 | 第二次写入值 |
| x17 | 200 | 第二次读取值 |
| x20 | 0xAA | GPIO输出值 |
| x31 | 0xFF | 测试完成标志 |

## 运行测试

### 方法1: 使用Makefile (推荐)

```bash
# 完整流程 (编译 + 仿真 + 波形查看)
make run_soc_bus

# 仅编译
make compile_soc_bus

# 仅仿真
make sim_soc_bus

# 仅查看波形
make verdi_soc_bus
```

### 方法2: 手动运行

```bash
# 编译
vcs -full64 -timescale=1ns/1ps -debug_access+all \
    core/*.v \
    peripherals/**/*.v \
    common/*.v \
    soc/*.v \
    testbench/soc_peripheral_bus_tb.v \
    -o simv

# 运行仿真
./simv

# 查看波形
verdi -ssf /tmp/cpu_v_build_kid/soc_peripheral_bus.fsdb
```

## 波形查看指南

### 关键信号

#### 1. 总线信号
```
soc.io_addr          # IO地址
soc.io_read          # 读使能
soc.io_write         # 写使能
soc.io_wdata         # 写数据
soc.io_rdata         # 读数据
soc.io_ready         # 总线就绪
```

#### 2. RAM信号
```
digital_mem_addr     # RAM地址
digital_mem_write_en # RAM写使能
digital_mem_read_en  # RAM读使能
digital_mem_wdata    # RAM写数据
digital_mem_data     # RAM读数据
```

#### 3. Flash信号
```
digital_flash_addr   # Flash地址
digital_flash_read_en # Flash读使能
digital_flash_data   # Flash数据
```

#### 4. GPIO信号
```
gpio_values          # GPIO值
```

### 关键时刻

| 时间 | 事件 | 预期行为 |
|------|------|----------|
| ~100ns | RAM写入 | digital_mem_write_en=1, addr=0x10000000, data=100 |
| ~200ns | RAM读取 | digital_mem_read_en=1, addr=0x10000000, data=100 |
| ~300ns | GPIO写入 | io_write=1, addr=0xC0000000, data=0xFF |
| ~400ns | GPIO读取 | io_read=1, addr=0xC0000000 |

## 测试验证

测试结束时会自动打印：

```
========================================
外设和总线测试完成
========================================
RAM内容:
  ram[0x10000000] = 0x64 (Expected: 100 = 0x64)
  ram[0x10000004] = 0xC8 (Expected: 200 = 0xC8)

寄存器值:
  x10 = 0x10000000 (RAM基地址)
  x11 = 0x64 (Expected: 100)
  x12 = 0x64 (从RAM读取, Expected: 100)
  ...

✓ RAM读写测试通过!
========================================
```

## 地址映射

| 外设 | 基地址 | 结束地址 | 说明 |
|------|--------|----------|------|
| Flash | 0x00000000 | 0x0FFFFFFF | 指令存储 |
| RAM | 0x10000000 | 0x3FFFFFFF | 数据存储 |
| GPIO | 0xC0000000 | 0xC0000FFF | 通用IO |
| UART | 0x10000100 | 0x100001FF | 串口 |
| Timer | 0x02000000 | 0x0200FFFF | 定时器 |

## 总线协议

### 读操作时序
```
周期1: io_addr有效, io_read=1
周期2: 等待io_ready=1
周期3: io_rdata有效, 读取完成
```

### 写操作时序
```
周期1: io_addr有效, io_write=1, io_wdata有效
周期2: 等待io_ready=1
周期3: 写入完成
```

## 扩展测试

可以在此基础上添加更多测试：

1. **UART测试**: 测试串口发送和接收
2. **Timer测试**: 测试定时器中断
3. **DMA测试**: 测试直接内存访问
4. **Cache测试**: 测试缓存一致性
5. **中断测试**: 测试外设中断响应

## 调试技巧

1. **查看总线活动**: 监控`io_addr`和`io_ready`信号
2. **验证地址译码**: 检查地址是否正确映射到外设
3. **检查数据通路**: 确认`io_wdata`和`io_rdata`正确传输
4. **监控外设状态**: 查看各外设的内部状态

## 常见问题

### Q: RAM读写失败
A: 检查地址是否在RAM范围内(0x10000000-0x3FFFFFFF)

### Q: GPIO无响应
A: 确认GPIO地址正确(0xC0000000)，检查总线译码逻辑

### Q: Flash读取错误
A: 验证Flash初始化是否正确，检查地址对齐

## 日志输出

仿真过程中会输出详细日志：
```
Time=XXX: BUS READ - addr=0xXXXXXXXX
Time=XXX: RAM WRITE - addr=0xXXXXXXXX, data=0xXXXXXXXX
Time=XXX: FLASH READ - addr=0xXXXXXXXX, data=0xXX
```

查看日志：
```bash
cat vlogs/sim_soc_bus.log
```

## Custom Program Regression (Quick Guide)

You can test any new instruction mix (add/sub/and/or/sll/srl/ori/addi/lw/sw/beq/bne/jal/jalr) by replacing the instruction bytes in:

- `testbench/soc_peripheral_bus_tb.v` (`flash_mem[...]` initialization block)

Then run:

```bash
make sim_soc_bus
```

Keep these key outputs in `vlogs/sim_soc_bus.log` for every new program:

- `WB COMMIT - rd=x?, data=...` (register write-back trace)
- `CPU READ/WRITE REQUEST` (bus transactions)
- `BUS READ/BUS WRITE` (memory-side behavior)
- End-of-test register summary and full register dump (`x0..x31`)

For new programs, update the end-of-test expected register checks in the testbench (`if (...)`) to match your intended results.
