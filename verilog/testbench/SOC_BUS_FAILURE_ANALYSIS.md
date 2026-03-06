# SoC总线测试首轮失败原因说明

## 1. 问题现象（最初失败时）

最初 `sim_soc_bus` 日志中出现了以下现象：

1. `x15 = 0x00000000 (GPIO读值)`，与预期不符。
2. RAM读写测试最终报失败（`x17` 未读到 `0xC8`，完成标志也异常）。
3. 总线侧出现长时间异常请求：写地址反复停在 `0x00000064`，握手不完成。

这些症状不是独立问题，而是同一根因导致的连锁反应。

## 2. 为什么会出现 `x15=0` 且 RAM测试失败

### 2.1 根因：测试程序机器码编码错误（`rs1` 编错）

`soc_peripheral_bus_tb.v` 里 3 条 GPIO 相关指令编码有误，导致基址寄存器从 `x13` 变成了 `x12`：

- `flash_mem[25]`: `0x20 -> 0xA0`
- `flash_mem[33]`: `0x22 -> 0xA2`
- `flash_mem[37]`: `0x27 -> 0xA7`

修复位置：

- `verilog/testbench/soc_peripheral_bus_tb.v:110`
- `verilog/testbench/soc_peripheral_bus_tb.v:118`
- `verilog/testbench/soc_peripheral_bus_tb.v:122`

### 2.2 错误地址如何导致连锁失败

编码错误后，GPIO写本应访问 `0xC0000000/0xC0000004`，却错误地用 `x12(=0x64)` 当基址，变成访问 `0x00000064` 附近。

这会造成两件事：

1. 总线握手在错误地址路径上异常（`ready` 长时间无法正常完成）。
2. 流水线后续指令提交受阻，导致后面的读写结果都不可信。

因此你会同时看到：

- `x15` 没有得到正确 GPIO 回读（最初表现为 `0`）。
- 后续 RAM 校验也失败（例如 `x17` 未得到预期值）。

## 3. 另外两个“看起来像错误”的点

### 3.1 `x31` 预期值写错

最初判定里把完成标志当成 `0xFFF`，但程序实际写的是 `0xFF`。  
因此即使功能正确，也会被误判失败。

当前修复后的判定位置：

- `verilog/testbench/soc_peripheral_bus_tb.v:263`

### 3.2 GPIO是 `inout`，`x15` 全字可能带 `Z`

GPIO回读时，高位可能出现高阻态，`x15` 全 32 位可能显示 `zz..aa`。  
功能判断应使用低 8 位：`x15[7:0] == 8'hAA`。

当前显示/判定位置：

- `verilog/testbench/soc_peripheral_bus_tb.v:250`
- `verilog/testbench/soc_peripheral_bus_tb.v:262`

## 4. 已落地的修复

1. 修正 3 条 GPIO 指令机器码（上文 2.1）。
2. 修正通过判定（`x31` 按 `0xFF` 判定）。
3. 判定 GPIO 时使用 `x15[7:0]`，避免 `Z` 干扰。
4. 增加调试镜像信号 `dbg_x*`，便于旧版 Verdi 直接观察。
5. 增加 `$fsdbDumpMDA(0, soc_peripheral_bus_tb);`（若工具支持）。

相关位置：

- `verilog/testbench/soc_peripheral_bus_tb.v:55`
- `verilog/testbench/soc_peripheral_bus_tb.v:59`
- `verilog/testbench/soc_peripheral_bus_tb.v:63`
- `verilog/testbench/soc_peripheral_bus_tb.v:214`

## 5. 修复后验收标准

结束时应满足：

- `x12 = 0x00000064`
- `x17 = 0x000000C8`
- `x14 = 0x000000FF`
- `x15[7:0] = 0xAA`
- `x20 = 0x000000AA`
- `x31 = 0x000000FF`

只要上面条件满足，就说明“最初的 `x15=0` + RAM失败”问题已经闭环修复。
