simSetSimulator "-vcssv" -exec "/tmp/cpu_v_build_kid/simv" -args "+vcs+flush+all"
debImport "-dbdir" "/tmp/cpu_v_build_kid/simv.daidir" "core/config.v" \
          "core/registers.v" "core/registers_csr.v" "core/inst_fetch.v" \
          "core/inst_decoder.v" "core/ex_alu.v" "core/ex_branch.v" \
          "core/ex_csr.v" "core/ex_mem.v" "core/mem_controller.v" \
          "core/cache.v" "core/sys_bus.v" "core/cpu_pipeline.v" \
          "core/cpu_top.v" "common/fifo_async.v" \
          "peripherals/digital/digital_ram.v" \
          "peripherals/digital/digital_flash.v" \
          "peripherals/uart/uart_clk_div.v" "peripherals/uart/uart_rx.v" \
          "peripherals/uart/uart_tx.v" "peripherals/uart/uart_top.v" \
          "peripherals/spi/spi_master.v" "peripherals/iic/iic_scl.v" \
          "peripherals/iic/iic_master.v" "peripherals/iic/iic_slave.v" \
          "peripherals/iic/iic_top.v" "peripherals/gpio_controller.v" \
          "peripherals/hl_adapter.v" "peripherals/peripherals_bus.v" \
          "soc/digital_soc.v" "soc/vboard_soc.v" \
          "testbench/soc_peripheral_bus_tb.v"
debLoadSimResult /tmp/cpu_v_build_kid/soc_peripheral_bus.fsdb
wvCreateWindow
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {28 29 1 1 1 1}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {31 32 1 1 1 1} -backward
srcDeselectAll -win $_nTrace1
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 )} 
wvSetPosition -win $_nWave2 {("G1" 3)}
wvGetSignalClose -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave2 {("G2" 8)}
wvGetSignalClose -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvScrollDown -win $_nWave2 2
wvScrollDown -win $_nWave2 3
wvSelectSignal -win $_nWave2 {( "G2" 8 )} 
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvScrollUp -win $_nWave2 2
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSelectSignal -win $_nWave2 {( "G2" 8 )} 
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSelectSignal -win $_nWave2 {( "G2" 8 )} 
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSelectSignal -win $_nWave2 {( "G2" 8 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 7 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 6 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 5 )} 
wvSetCursor -win $_nWave2 48554.874840 -snap {("G2" 5)}
wvSetCursor -win $_nWave2 9093.889602
wvSetCursor -win $_nWave2 25820.150834
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G2" 8 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
}
wvSelectSignal -win $_nWave2 {( "G2" 5 6 7 )} 
wvSetPosition -win $_nWave2 {("G2" 7)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 5)}
wvSetPosition -win $_nWave2 {("G2" 6)}
wvSetPosition -win $_nWave2 {("G2" 7)}
wvSetPosition -win $_nWave2 {("G2" 8)}
wvSetPosition -win $_nWave2 {("G2" 9)}
wvSetPosition -win $_nWave2 {("G2" 10)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetCursor -win $_nWave2 56836.810013 -snap {("G2" 7)}
wvSetCursor -win $_nWave2 118301.760270 -snap {("G2" 7)}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 )} 
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 1 2 3 4 )} 
wvSetPosition -win $_nWave2 {("G3" 4)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 422409.562598 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 20461.251605 -snap {("G3" 1)}
wvZoom -win $_nWave2 9418.671374 10393.016688
wvSetCursor -win $_nWave2 9429.928251 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 166.351639 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 185.113102 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 68.792031 -snap {("G3" 0)}
wvSetCursor -win $_nWave2 80.048909 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 48.779804 -snap {("G3" 2)}
wvZoomAll -win $_nWave2
wvPrevView -win $_nWave2
wvSetCursor -win $_nWave2 46.278276 -snap {("G3" 2)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 2
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3}
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSetPosition -win $_nWave2 {("G3" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSetPosition -win $_nWave2 {("G3" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvSetPosition -win $_nWave2 {("G3" 5)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 11)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 5 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSetPosition -win $_nWave2 {("G3" 5)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 2 3 4 5 )} 
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvSetPosition -win $_nWave2 {("G3" 7)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSelectSignal -win $_nWave2 {( "G3" 7 )} 
wvSetPosition -win $_nWave2 {("G3" 7)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G3" 4)}
wvSetPosition -win $_nWave2 {("G3" 5)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 5)}
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 3 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 3 4 5 6 7 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 420585.428718 -snap {("G3" 3)}
wvSetCursor -win $_nWave2 448762.644694
wvSetCursor -win $_nWave2 448762.644694
wvSetCursor -win $_nWave2 444119.807971 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 448762.644694 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 449563.133784 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 450203.525056
wvSetCursor -win $_nWave2 441718.340700
wvSetCursor -win $_nWave2 448442.449058
wvSetCursor -win $_nWave2 444440.003607
wvSetCursor -win $_nWave2 443159.221062
wvSetCursor -win $_nWave2 446201.079605
wvSetCursor -win $_nWave2 448602.546876
wvSetCursor -win $_nWave2 451644.405419
wvSetCursor -win $_nWave2 452604.992327
wvSetCursor -win $_nWave2 447962.155604
wvSetCursor -win $_nWave2 445240.492697
wvZoom -win $_nWave2 442358.731972 443639.514517
wvSetCursor -win $_nWave2 443123.255571
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 445208.843064
wvSetCursor -win $_nWave2 433213.221185
wvSetCursor -win $_nWave2 437211.761812
wvSetCursor -win $_nWave2 442052.100464
wvSetCursor -win $_nWave2 438264.009345
wvSetCursor -win $_nWave2 441210.302438
wvSetCursor -win $_nWave2 476144.920541
wvSetCursor -win $_nWave2 422480.296346
wvSetCursor -win $_nWave2 428372.882532
wvSetCursor -win $_nWave2 430266.928092
wvSetCursor -win $_nWave2 435528.165758
wvSetCursor -win $_nWave2 435528.165758
wvSetCursor -win $_nWave2 810023.062836 -snap {("G3" 5)}
wvSetCursor -win $_nWave2 415956.361640
wvSetCursor -win $_nWave2 409432.426934
wvSetCursor -win $_nWave2 422059.397333
wvSetCursor -win $_nWave2 414133.213477
wvSetCursor -win $_nWave2 412028.718410
wvSetCursor -win $_nWave2 421498.946209
wvSetCursor -win $_nWave2 429496.027462
wvSetCursor -win $_nWave2 422340.744236
wvSetCursor -win $_nWave2 428443.779928
wvSetCursor -win $_nWave2 432863.219568
wvSetCursor -win $_nWave2 427181.082889
wvSetCursor -win $_nWave2 431390.073022
wvSetCursor -win $_nWave2 434125.916608
wvSetCursor -win $_nWave2 438334.906741
wvSetCursor -win $_nWave2 443385.694900
wvSetCursor -win $_nWave2 438966.255261
wvSetCursor -win $_nWave2 443385.694900
wvSetCursor -win $_nWave2 450330.528620 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 446752.887007 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 443596.144407 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 441491.649341 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 450961.877140
wvSetCursor -win $_nWave2 447384.235527
wvZoom -win $_nWave2 453276.821713 454539.518753
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 473514.824141 -snap {("G3" 3)}
wvSetCursor -win $_nWave2 481606.459087
wvSelectSignal -win $_nWave2 {( "G3" 2 3 4 5 6 7 )} 
wvScrollDown -win $_nWave2 3
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvMoveSelected -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetSignalFilter -win $_nWave2 "*id_ex_inst_flags"
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvGetSignalSetSignalFilter -win $_nWave2 "*id_ex_inst_flags"
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvGetSignalSetSignalFilter -win $_nWave2 "*id_ex_inst_flags"
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvGetSignalSetSignalFilter -win $_nWave2 "*id_ex_inst_flags"
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvGetSignalSetSignalFilter -win $_nWave2 "*id_ex_inst_flags"
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvGetSignalSetSignalFilter -win $_nWave2 "*id_ex_inst_flags"
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvGetSignalSetSignalFilter -win $_nWave2 "*id_ex_inst_flags"
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 4
wvSelectGroup -win $_nWave2 {G4}
wvSelectGroup -win $_nWave2 {G4}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
}
wvSelectSignal -win $_nWave2 {( "G4" 1 2 3 )} 
wvSetPosition -win $_nWave2 {("G4" 3)}
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/sys_bus"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/peripherals_bus/dut"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/peripherals_bus/flash"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/peripherals_bus/gpio_controller_inst"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/peripherals_bus/ram"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvSetPosition -win $_nWave2 {("G4" 6)}
wvSetPosition -win $_nWave2 {("G4" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
}
wvSelectSignal -win $_nWave2 {( "G4" 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G4" 6)}
wvSetPosition -win $_nWave2 {("G4" 6)}
wvSetPosition -win $_nWave2 {("G4" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
}
wvSelectSignal -win $_nWave2 {( "G4" 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G4" 6)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 488928.860416 -snap {("G4" 1)}
wvSetCursor -win $_nWave2 493700.850256 -snap {("G4" 0)}
wvSetCursor -win $_nWave2 484986.781853 -snap {("G3" 11)}
wvSetCursor -win $_nWave2 455000.000000
wvSetCursor -win $_nWave2 495775.628448 -snap {("G3" 11)}
wvSelectGroup -win $_nWave2 {G5}
wvSelectGroup -win $_nWave2 {G5}
wvSelectGroup -win $_nWave2 {G5}
wvSelectGroup -win $_nWave2 {G5}
wvSelectGroup -win $_nWave2 {G5}
wvSelectGroup -win $_nWave2 {G5}
wvSelectGroup -win $_nWave2 {G5}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvMoveSelected -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvSetCursor -win $_nWave2 442759.591842
wvSetCursor -win $_nWave2 447946.537320
wvSetCursor -win $_nWave2 456038.172266
wvSetCursor -win $_nWave2 452303.571522
wvSetCursor -win $_nWave2 448361.492959
wvSetCursor -win $_nWave2 441514.724927
wvSetCursor -win $_nWave2 446494.192586
wvSetCursor -win $_nWave2 451681.138065
wvSetCursor -win $_nWave2 458112.950458
wvSetCursor -win $_nWave2 461432.595564
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvSetPosition -win $_nWave2 {("G5" 3)}
wvSetPosition -win $_nWave2 {("G5" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "G5" 1 2 3 )} 
wvSetPosition -win $_nWave2 {("G5" 3)}
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
}
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSetPosition -win $_nWave2 {("G5" 4)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSelectSignal -win $_nWave2 {( "G5" 2 )} 
wvSelectSignal -win $_nWave2 {( "G5" 1 )} 
wvSelectSignal -win $_nWave2 {( "G5" 3 )} 
wvSetCursor -win $_nWave2 470354.141787 -snap {("G5" 1)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 444211.936576
wvSetCursor -win $_nWave2 451473.660246
wvSetCursor -win $_nWave2 459150.339553
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvExpandBus -win $_nWave2 {("G5" 4)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 26
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSetPosition -win $_nWave2 {("G5" 4)}
wvCollapseBus -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvSelectSignal -win $_nWave2 {( "G4" 6 )} 
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvExpandBus -win $_nWave2 {("G5" 4)}
wvScrollUp -win $_nWave2 2
wvSetCursor -win $_nWave2 3313005.815915 -snap {("G5" 27)}
wvSetCursor -win $_nWave2 657289.731013 -snap {("G5" 28)}
wvSetCursor -win $_nWave2 2064819.256011 -snap {("G5" 27)}
wvSetCursor -win $_nWave2 1659822.553063
wvSetCursor -win $_nWave2 1128679.336083
wvSetCursor -win $_nWave2 1434086.685847
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 4806770.218228
wvSetCursor -win $_nWave2 4430023.363286
wvSetCursor -win $_nWave2 2351420.025674
wvSetCursor -win $_nWave2 4507970.988447
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 29
wvSelectSignal -win $_nWave2 {( "G5" 4 )} 
wvSetPosition -win $_nWave2 {("G5" 4)}
wvCollapseBus -win $_nWave2 {("G5" 4)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvScrollUp -win $_nWave2 2
wvScrollUp -win $_nWave2 9
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
wvSetPosition -win $_nWave2 {("G3" 6)}
wvExpandBus -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvScrollUp -win $_nWave2 42
wvSelectSignal -win $_nWave2 {( "G3" 6 )} 
wvSetPosition -win $_nWave2 {("G3" 6)}
wvCollapseBus -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G3" 6)}
wvSetPosition -win $_nWave2 {("G5" 4)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 42688.418642 -snap {("G3" 9)}
wvSetCursor -win $_nWave2 47029.043646 -snap {("G3" 4)}
wvSetCursor -win $_nWave2 18490.051348 -snap {("G3" 10)}
wvScrollDown -win $_nWave2 12
wvSelectGroup -win $_nWave2 {G6}
wvSelectGroup -win $_nWave2 {G6}
wvSetPosition -win $_nWave2 {("G6" 0)}
wvMoveSelected -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSetPosition -win $_nWave2 {("G6" 1)}
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetSignalFilter -win $_nWave2 "*inst_sw"
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSetPosition -win $_nWave2 {("G6" 1)}
wvGetSignalSetSignalFilter -win $_nWave2 "*inst"
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 8)}
wvSetPosition -win $_nWave2 {("G6" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvSelectSignal -win $_nWave2 {( "G6" 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave2 {("G6" 8)}
wvSetPosition -win $_nWave2 {("G6" 8)}
wvSetPosition -win $_nWave2 {("G6" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvSelectSignal -win $_nWave2 {( "G6" 2 3 4 5 6 7 8 )} 
wvSetPosition -win $_nWave2 {("G6" 8)}
wvGetSignalClose -win $_nWave2
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 2 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvSelectSignal -win $_nWave2 {( "G6" 2 )} 
wvSelectSignal -win $_nWave2 {( "G6" 4 )} 
wvSelectSignal -win $_nWave2 {( "G6" 8 )} 
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G6" 2 )} 
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvSelectSignal -win $_nWave2 {( "G6" 6 )} 
wvSetCursor -win $_nWave2 2178214.128374 -snap {("G6" 4)}
wvSetCursor -win $_nWave2 2389931.771140 -snap {("G6" 4)}
wvSetCursor -win $_nWave2 2407014.970755 -snap {("G6" 3)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvSetPosition -win $_nWave2 {("G6" 11)}
wvSetPosition -win $_nWave2 {("G6" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvSelectSignal -win $_nWave2 {( "G6" 9 10 11 )} 
wvSetPosition -win $_nWave2 {("G6" 11)}
wvSetPosition -win $_nWave2 {("G6" 11)}
wvSetPosition -win $_nWave2 {("G6" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvSelectSignal -win $_nWave2 {( "G6" 9 10 11 )} 
wvSetPosition -win $_nWave2 {("G6" 11)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 2431333.407854 -snap {("G6" 11)}
wvSetCursor -win $_nWave2 10048.940950 -snap {("G7" 0)}
wvSetCursor -win $_nWave2 166614.890862 -snap {("G7" 0)}
wvSetCursor -win $_nWave2 167418.806138 -snap {("G7" 0)}
wvSetCursor -win $_nWave2 170634.467242 -snap {("G7" 0)}
wvScrollUp -win $_nWave2 3
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G6" 1 )} 
wvScrollDown -win $_nWave2 1
wvSetPosition -win $_nWave2 {("G6" 1)}
wvSetPosition -win $_nWave2 {("G6" 2)}
wvSetPosition -win $_nWave2 {("G6" 3)}
wvSetPosition -win $_nWave2 {("G6" 4)}
wvSetPosition -win $_nWave2 {("G6" 5)}
wvSetPosition -win $_nWave2 {("G6" 6)}
wvSetPosition -win $_nWave2 {("G6" 7)}
wvSetPosition -win $_nWave2 {("G6" 8)}
wvSetPosition -win $_nWave2 {("G6" 9)}
wvSetPosition -win $_nWave2 {("G6" 8)}
wvSetPosition -win $_nWave2 {("G6" 7)}
wvSetPosition -win $_nWave2 {("G6" 6)}
wvSetPosition -win $_nWave2 {("G6" 7)}
wvSetPosition -win $_nWave2 {("G6" 8)}
wvSetPosition -win $_nWave2 {("G6" 9)}
wvSetPosition -win $_nWave2 {("G6" 8)}
wvSetPosition -win $_nWave2 {("G6" 9)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G6" 9)}
wvScrollDown -win $_nWave2 3
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G6" 2 )} 
wvSelectSignal -win $_nWave2 {( "G6" 3 )} 
wvSetCursor -win $_nWave2 39190.869705 -snap {("G6" 6)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 2244424.169536 -snap {("G6" 3)}
wvSetCursor -win $_nWave2 2316776.544375 -snap {("G6" 4)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvSetPosition -win $_nWave2 {("G6" 10)}
wvSetPosition -win $_nWave2 {("G6" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvSelectSignal -win $_nWave2 {( "G6" 10 )} 
wvSetPosition -win $_nWave2 {("G6" 10)}
wvSetPosition -win $_nWave2 {("G6" 10)}
wvSetPosition -win $_nWave2 {("G6" 10)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
}
wvSelectSignal -win $_nWave2 {( "G6" 10 )} 
wvSetPosition -win $_nWave2 {("G6" 10)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 2485159.649269
wvSetCursor -win $_nWave2 2534198.481104
wvSelectSignal -win $_nWave2 {( "G6" 6 )} 
wvSelectSignal -win $_nWave2 {( "G6" 5 )} 
wvSelectGroup -win $_nWave2 {G7}
wvSelectGroup -win $_nWave2 {G7}
wvSelectGroup -win $_nWave2 {G7}
wvSetPosition -win $_nWave2 {("G7" 0)}
wvMoveSelected -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvSetPosition -win $_nWave2 {("G7" 1)}
wvSetPosition -win $_nWave2 {("G7" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G7" 1 )} 
wvSetPosition -win $_nWave2 {("G7" 1)}
wvSetPosition -win $_nWave2 {("G7" 1)}
wvSetPosition -win $_nWave2 {("G7" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G7" 1 )} 
wvSetPosition -win $_nWave2 {("G7" 1)}
wvGetSignalClose -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvSetPosition -win $_nWave2 {("G7" 2)}
wvSetPosition -win $_nWave2 {("G7" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G7" 2 )} 
wvSetPosition -win $_nWave2 {("G7" 2)}
wvSetPosition -win $_nWave2 {("G7" 2)}
wvSetPosition -win $_nWave2 {("G7" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G7" 2 )} 
wvSetPosition -win $_nWave2 {("G7" 2)}
wvGetSignalClose -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvSetPosition -win $_nWave2 {("G7" 3)}
wvSetPosition -win $_nWave2 {("G7" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G7" 3 )} 
wvSetPosition -win $_nWave2 {("G7" 3)}
wvSetPosition -win $_nWave2 {("G7" 3)}
wvSetPosition -win $_nWave2 {("G7" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G7" 3 )} 
wvSetPosition -win $_nWave2 {("G7" 3)}
wvGetSignalClose -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvSetPosition -win $_nWave2 {("G7" 4)}
wvSetPosition -win $_nWave2 {("G7" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/flash_mem\[0:4095\]} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G7" 4 )} 
wvSetPosition -win $_nWave2 {("G7" 4)}
wvSetPosition -win $_nWave2 {("G7" 4)}
wvSetPosition -win $_nWave2 {("G7" 4)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/flash_mem\[0:4095\]} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G7" 4 )} 
wvSetPosition -win $_nWave2 {("G7" 4)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G7" 4 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G8" 0)}
wvSetPosition -win $_nWave2 {("G7" 3)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvSetPosition -win $_nWave2 {("G7" 8)}
wvSetPosition -win $_nWave2 {("G7" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G7" 4 5 6 7 8 )} 
wvSetPosition -win $_nWave2 {("G7" 8)}
wvSetPosition -win $_nWave2 {("G7" 8)}
wvSetPosition -win $_nWave2 {("G7" 8)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G7" 4 5 6 7 8 )} 
wvSetPosition -win $_nWave2 {("G7" 8)}
wvGetSignalClose -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvSetPosition -win $_nWave2 {("G7" 11)}
wvSetPosition -win $_nWave2 {("G7" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G7" 9 10 11 )} 
wvSetPosition -win $_nWave2 {("G7" 11)}
wvSetPosition -win $_nWave2 {("G7" 11)}
wvSetPosition -win $_nWave2 {("G7" 11)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
}
wvSelectSignal -win $_nWave2 {( "G7" 9 10 11 )} 
wvSetPosition -win $_nWave2 {("G7" 11)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 2922455.082208 -snap {("G7" 9)}
wvSetCursor -win $_nWave2 2924263.891579 -snap {("G7" 8)}
wvSelectGroup -win $_nWave2 {G8}
wvSelectGroup -win $_nWave2 {G8}
wvSetPosition -win $_nWave2 {("G8" 0)}
wvSelectGroup -win $_nWave2 {G8}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvSetPosition -win $_nWave2 {("G8" 1)}
wvSetPosition -win $_nWave2 {("G8" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
}
wvSelectSignal -win $_nWave2 {( "G8" 1 )} 
wvSetPosition -win $_nWave2 {("G8" 1)}
wvSetPosition -win $_nWave2 {("G8" 2)}
wvSetPosition -win $_nWave2 {("G8" 2)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
}
wvSelectSignal -win $_nWave2 {( "G8" 2 )} 
wvSetPosition -win $_nWave2 {("G8" 2)}
wvSetPosition -win $_nWave2 {("G8" 3)}
wvSetPosition -win $_nWave2 {("G8" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
}
wvSelectSignal -win $_nWave2 {( "G8" 3 )} 
wvSetPosition -win $_nWave2 {("G8" 3)}
wvSetPosition -win $_nWave2 {("G8" 3)}
wvSetPosition -win $_nWave2 {("G8" 3)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
}
wvSelectSignal -win $_nWave2 {( "G8" 3 )} 
wvSetPosition -win $_nWave2 {("G8" 3)}
wvGetSignalClose -win $_nWave2
wvSelectGroup -win $_nWave2 {G9}
wvSetPosition -win $_nWave2 {("G9" 0)}
wvSetPosition -win $_nWave2 {("G8" 3)}
wvSetPosition -win $_nWave2 {("G8" 2)}
wvSetPosition -win $_nWave2 {("G8" 1)}
wvSetPosition -win $_nWave2 {("G8" 0)}
wvSetPosition -win $_nWave2 {("G7" 11)}
wvSetPosition -win $_nWave2 {("G7" 10)}
wvSetPosition -win $_nWave2 {("G7" 9)}
wvSetPosition -win $_nWave2 {("G7" 8)}
wvSetPosition -win $_nWave2 {("G7" 7)}
wvSetPosition -win $_nWave2 {("G7" 6)}
wvSetPosition -win $_nWave2 {("G7" 5)}
wvSetPosition -win $_nWave2 {("G7" 4)}
wvSetPosition -win $_nWave2 {("G7" 3)}
wvSetPosition -win $_nWave2 {("G7" 2)}
wvSetPosition -win $_nWave2 {("G7" 1)}
wvSetPosition -win $_nWave2 {("G7" 3)}
wvSetPosition -win $_nWave2 {("G7" 4)}
wvSetPosition -win $_nWave2 {("G7" 6)}
wvSetPosition -win $_nWave2 {("G7" 7)}
wvSetPosition -win $_nWave2 {("G7" 8)}
wvSetPosition -win $_nWave2 {("G7" 7)}
wvSetPosition -win $_nWave2 {("G7" 8)}
wvSetPosition -win $_nWave2 {("G7" 9)}
wvSetPosition -win $_nWave2 {("G7" 10)}
wvSetPosition -win $_nWave2 {("G7" 11)}
wvSetPosition -win $_nWave2 {("G8" 1)}
wvSetPosition -win $_nWave2 {("G8" 2)}
wvSetPosition -win $_nWave2 {("G8" 3)}
wvSetPosition -win $_nWave2 {("G9" 0)}
wvMoveSelected -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvSetPosition -win $_nWave2 {("G9" 1)}
wvSetPosition -win $_nWave2 {("G9" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
}
wvAddSignal -win $_nWave2 -group {"G10" \
}
wvSelectSignal -win $_nWave2 {( "G9" 1 )} 
wvSetPosition -win $_nWave2 {("G9" 1)}
wvSetPosition -win $_nWave2 {("G9" 6)}
wvSetPosition -win $_nWave2 {("G9" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/inst_jal} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out_en} \
}
wvAddSignal -win $_nWave2 -group {"G10" \
}
wvSelectSignal -win $_nWave2 {( "G9" 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G9" 6)}
wvSetCursor -win $_nWave2 4136314.701721 -snap {("G9" 0)}
wvSetCursor -win $_nWave2 4147569.515585 -snap {("G9" 0)}
wvSetCursor -win $_nWave2 4147569.515585 -snap {("G9" 0)}
wvSetCursor -win $_nWave2 4154201.816612 -snap {("G9" 0)}
wvSetCursor -win $_nWave2 4151589.091965 -snap {("G9" 2)}
wvSetCursor -win $_nWave2 4158221.392991 -snap {("G8" 3)}
wvSetCursor -win $_nWave2 4162240.969371 -snap {("G9" 2)}
wvSetCursor -win $_nWave2 4164451.736380 -snap {("G9" 0)}
wvSetCursor -win $_nWave2 4141540.151015 -snap {("G9" 0)}
wvSetCursor -win $_nWave2 4131290.231246
wvSetCursor -win $_nWave2 4126064.781952
wvSetCursor -win $_nWave2 4131491.210065
wvSetCursor -win $_nWave2 4137319.595816
wvSetCursor -win $_nWave2 4148976.367318 -snap {("G9" 1)}
wvSetCursor -win $_nWave2 4143147.981567
wvSetCursor -win $_nWave2 4136314.701721
wvSetCursor -win $_nWave2 4143147.981567
wvSetCursor -win $_nWave2 4137319.595816
wvSetCursor -win $_nWave2 4144353.854481
wvSetCursor -win $_nWave2 4141138.193377
wvSetCursor -win $_nWave2 4137118.616997
wvSetCursor -win $_nWave2 4143348.960386
wvSetCursor -win $_nWave2 4146765.600309
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 4167667.397484 -snap {("G9" 2)}
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G9" 2 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G10" 0)}
wvSetPosition -win $_nWave2 {("G9" 5)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvSetPosition -win $_nWave2 {("G9" 6)}
wvSetPosition -win $_nWave2 {("G9" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/inst_jalr} \
}
wvAddSignal -win $_nWave2 -group {"G10" \
}
wvSelectSignal -win $_nWave2 {( "G9" 6 )} 
wvSetPosition -win $_nWave2 {("G9" 6)}
wvSetPosition -win $_nWave2 {("G9" 6)}
wvSetPosition -win $_nWave2 {("G9" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/inst_jalr} \
}
wvAddSignal -win $_nWave2 -group {"G10" \
}
wvSelectSignal -win $_nWave2 {( "G9" 6 )} 
wvSetPosition -win $_nWave2 {("G9" 6)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G10" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G10" 1)}
wvSetPosition -win $_nWave2 {("G10" 1)}
wvScrollDown -win $_nWave2 0
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvSetPosition -win $_nWave2 {("G10" 6)}
wvSetPosition -win $_nWave2 {("G10" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out_en} \
}
wvAddSignal -win $_nWave2 -group {"G10" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/inst_jalr} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G11" \
}
wvSelectSignal -win $_nWave2 {( "G10" 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G10" 6)}
wvSetPosition -win $_nWave2 {("G10" 6)}
wvSetPosition -win $_nWave2 {("G10" 6)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out_en} \
}
wvAddSignal -win $_nWave2 -group {"G10" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/inst_jalr} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G11" \
}
wvSelectSignal -win $_nWave2 {( "G10" 2 3 4 5 6 )} 
wvSetPosition -win $_nWave2 {("G10" 6)}
wvGetSignalClose -win $_nWave2
wvSetCursor -win $_nWave2 4968747.058784 -snap {("G10" 5)}
wvSetCursor -win $_nWave2 4977791.105639 -snap {("G10" 2)}
wvSetCursor -win $_nWave2 4951060.060233
wvSelectGroup -win $_nWave2 {G11}
wvSelectGroup -win $_nWave2 {G11}
wvSelectGroup -win $_nWave2 {G11}
wvSelectGroup -win $_nWave2 {G11}
wvSelectGroup -win $_nWave2 {G11}
wvSelectGroup -win $_nWave2 {G11}
wvSelectGroup -win $_nWave2 {G11}
wvSelectGroup -win $_nWave2 {G11}
wvSetPosition -win $_nWave2 {("G11" 0)}
wvMoveSelected -win $_nWave2
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvSetPosition -win $_nWave2 {("G11" 1)}
wvSetPosition -win $_nWave2 {("G11" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out_en} \
}
wvAddSignal -win $_nWave2 -group {"G10" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/inst_jalr} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G11" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G12" \
}
wvSelectSignal -win $_nWave2 {( "G11" 1 )} 
wvSetPosition -win $_nWave2 {("G11" 1)}
wvSetPosition -win $_nWave2 {("G11" 1)}
wvSetPosition -win $_nWave2 {("G11" 1)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out_en} \
}
wvAddSignal -win $_nWave2 -group {"G10" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/inst_jalr} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G11" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G12" \
}
wvSelectSignal -win $_nWave2 {( "G11" 1 )} 
wvSetPosition -win $_nWave2 {("G11" 1)}
wvGetSignalClose -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G11" 1 )} 
wvExpandBus -win $_nWave2 {("G11" 1)}
wvSetCursor -win $_nWave2 4952064.954328 -snap {("G11" 32)}
wvSetCursor -win $_nWave2 4179980.363446 -snap {("G11" 29)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvSetCursor -win $_nWave2 1865142.223396 -snap {("G11" 17)}
wvSetCursor -win $_nWave2 1658535.997465 -snap {("G11" 19)}
wvSetCursor -win $_nWave2 1640045.946117 -snap {("G11" 18)}
wvSetCursor -win $_nWave2 1636026.369738
wvSetCursor -win $_nWave2 1853083.494256
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 1
wvScrollUp -win $_nWave2 7
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G10" 5 )} 
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G10" 5 )} 
wvSelectSignal -win $_nWave2 {( "G10" 5 )} 
wvSetPosition -win $_nWave2 {("G10" 5)}
wvExpandBus -win $_nWave2 {("G10" 5)}
wvSetPosition -win $_nWave2 {("G11" 33)}
wvScrollDown -win $_nWave2 3
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G10" 5 )} 
wvSetPosition -win $_nWave2 {("G10" 5)}
wvCollapseBus -win $_nWave2 {("G10" 5)}
wvSetPosition -win $_nWave2 {("G10" 5)}
wvSetPosition -win $_nWave2 {("G11" 33)}
wvGetSignalOpen -win $_nWave2
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_csr"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetScope -win $_nWave2 "/soc_peripheral_bus_tb/soc/peripherals_bus"
wvGetSignalSetScope -win $_nWave2 \
           "/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers"
wvGetSignalSetSignalFilter -win $_nWave2 "*mem"
wvSetPosition -win $_nWave2 {("G11" 33)}
wvSetPosition -win $_nWave2 {("G11" 33)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out_en} \
}
wvAddSignal -win $_nWave2 -group {"G10" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/inst_jalr} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G11" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[30\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[29\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[28\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[27\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[26\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[25\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[24\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[23\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[22\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[21\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[20\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[19\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[18\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[17\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[16\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[15\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[14\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[13\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[12\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[11\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[10\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[9\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[8\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[7\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[6\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[5\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[4\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[3\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[2\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[1\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[0\]\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G12" \
}
wvSetPosition -win $_nWave2 {("G11" 33)}
wvSetPosition -win $_nWave2 {("G11" 34)}
wvSetPosition -win $_nWave2 {("G11" 34)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out_en} \
}
wvAddSignal -win $_nWave2 -group {"G10" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/inst_jalr} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G11" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[30\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[29\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[28\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[27\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[26\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[25\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[24\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[23\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[22\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[21\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[20\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[19\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[18\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[17\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[16\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[15\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[14\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[13\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[12\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[11\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[10\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[9\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[8\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[7\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[6\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[5\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[4\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[3\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[2\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[1\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[0\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_read_en} \
}
wvAddSignal -win $_nWave2 -group {"G12" \
}
wvSelectSignal -win $_nWave2 {( "G11" 34 )} 
wvSetPosition -win $_nWave2 {("G11" 34)}
wvSetPosition -win $_nWave2 {("G11" 34)}
wvSetPosition -win $_nWave2 {("G11" 34)}
wvAddSignal -win $_nWave2 -clear
wvAddSignal -win $_nWave2 -group {"G1" \
{/soc_peripheral_bus_tb/clk} \
{/soc_peripheral_bus_tb/clk_timer} \
{/soc_peripheral_bus_tb/rst_n} \
}
wvAddSignal -win $_nWave2 -group {"G2" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/cur_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/next_inst_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_read_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_mem_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_addr\[31:0\]} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/digital_flash_ready} \
}
wvAddSignal -win $_nWave2 -group {"G3" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/inst_ready} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs1\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/rs2\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/imm_1231\[19:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_flags\[47:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/invalid_instruction} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_control_hazard} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_inst_code\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_cur\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/if_id_pc_next\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G4" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/id_ex_rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/out_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/alu/rd_out\[4:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G5" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G6" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/busy_flag} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/byte_size\[1:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/inst_sw} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_write_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/state\[1:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_addr\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/rd_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/wb_rd_wait} \
{/soc_peripheral_bus_tb/soc/digital_mem_wdata\[31:0\]} \
{/soc_peripheral_bus_tb/soc/digital_mem_write_en} \
}
wvAddSignal -win $_nWave2 -group {"G7" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/control_hazard} \
{/soc_peripheral_bus_tb/digital_flash_data\[7:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/b_n_jmp} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs2_data\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_pc\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/pipe_flush} \
}
wvAddSignal -win $_nWave2 -group {"G8" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_decoder/inst_bne} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G9" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/inst_fetch/fetch_stop} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out_en} \
}
wvAddSignal -win $_nWave2 -group {"G10" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/inst_jalr} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/jmp_en} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/pc_next_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_data_out\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rd_out\[4:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_branch/rs1_data\[31:0\]} \
}
wvAddSignal -win $_nWave2 -group {"G11" \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[31\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[30\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[29\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[28\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[27\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[26\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[25\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[24\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[23\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[22\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[21\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[20\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[19\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[18\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[17\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[16\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[15\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[14\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[13\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[12\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[11\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[10\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[9\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[8\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[7\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[6\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[5\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[4\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[3\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[2\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[1\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/registers/reg_file\[0\]\[31:0\]} \
{/soc_peripheral_bus_tb/soc/cpu/cpu_pipeline/ex_mem/mem_read_en} \
}
wvAddSignal -win $_nWave2 -group {"G12" \
}
wvSelectSignal -win $_nWave2 {( "G11" 34 )} 
wvSetPosition -win $_nWave2 {("G11" 34)}
wvGetSignalClose -win $_nWave2
wvSetPosition -win $_nWave2 {("G11" 33)}
wvSetPosition -win $_nWave2 {("G11" 31)}
wvSetPosition -win $_nWave2 {("G11" 30)}
wvSetPosition -win $_nWave2 {("G11" 29)}
wvSetPosition -win $_nWave2 {("G11" 28)}
wvSetPosition -win $_nWave2 {("G11" 27)}
wvSetPosition -win $_nWave2 {("G11" 26)}
wvSetPosition -win $_nWave2 {("G11" 25)}
wvSetPosition -win $_nWave2 {("G11" 24)}
wvSetPosition -win $_nWave2 {("G11" 23)}
wvSetPosition -win $_nWave2 {("G11" 22)}
wvSetPosition -win $_nWave2 {("G11" 21)}
wvSetPosition -win $_nWave2 {("G11" 20)}
wvSetPosition -win $_nWave2 {("G11" 19)}
wvSetPosition -win $_nWave2 {("G11" 18)}
wvSetPosition -win $_nWave2 {("G11" 17)}
wvSetPosition -win $_nWave2 {("G11" 16)}
wvSetPosition -win $_nWave2 {("G11" 15)}
wvSetPosition -win $_nWave2 {("G11" 14)}
wvSetPosition -win $_nWave2 {("G11" 15)}
wvSetPosition -win $_nWave2 {("G11" 14)}
wvSetPosition -win $_nWave2 {("G11" 13)}
wvSetPosition -win $_nWave2 {("G11" 12)}
wvSetPosition -win $_nWave2 {("G11" 11)}
wvSetPosition -win $_nWave2 {("G11" 10)}
wvSetPosition -win $_nWave2 {("G11" 9)}
wvSetPosition -win $_nWave2 {("G11" 8)}
wvSetPosition -win $_nWave2 {("G11" 7)}
wvSetPosition -win $_nWave2 {("G11" 6)}
wvSetPosition -win $_nWave2 {("G11" 5)}
wvSetPosition -win $_nWave2 {("G11" 4)}
wvSetPosition -win $_nWave2 {("G11" 3)}
wvSetPosition -win $_nWave2 {("G11" 2)}
wvSetPosition -win $_nWave2 {("G11" 1)}
wvSetPosition -win $_nWave2 {("G11" 0)}
wvSetPosition -win $_nWave2 {("G10" 6)}
wvSetPosition -win $_nWave2 {("G10" 5)}
wvSetPosition -win $_nWave2 {("G10" 4)}
wvSetPosition -win $_nWave2 {("G10" 3)}
wvSetPosition -win $_nWave2 {("G10" 2)}
wvSetPosition -win $_nWave2 {("G10" 1)}
wvSetPosition -win $_nWave2 {("G10" 2)}
wvSetPosition -win $_nWave2 {("G10" 3)}
wvSetPosition -win $_nWave2 {("G10" 4)}
wvSetPosition -win $_nWave2 {("G10" 5)}
wvSetPosition -win $_nWave2 {("G10" 6)}
wvSetPosition -win $_nWave2 {("G10" 5)}
wvSetPosition -win $_nWave2 {("G10" 4)}
wvSetPosition -win $_nWave2 {("G10" 5)}
wvSetPosition -win $_nWave2 {("G10" 6)}
wvSetPosition -win $_nWave2 {("G10" 5)}
wvSetPosition -win $_nWave2 {("G10" 4)}
wvSetPosition -win $_nWave2 {("G10" 5)}
wvSetPosition -win $_nWave2 {("G10" 4)}
wvSetPosition -win $_nWave2 {("G10" 5)}
wvSetPosition -win $_nWave2 {("G10" 4)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G10" 4)}
wvSetPosition -win $_nWave2 {("G10" 5)}
debExit
