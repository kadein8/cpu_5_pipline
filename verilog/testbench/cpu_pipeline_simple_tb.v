/*
    简化的 CPU Pipeline 测试
    直接测试 cpu_pipeline 模块，绕过 cache 和 sys_bus
*/
`timescale 1ns/1ns
`include "config.v"

module cpu_pipeline_simple_tb;
    reg clk;
    reg rst_n;

    // 数据内存接口
    wire read_en;
    wire [`MAX_BIT_POS:0] mem_addr;
    reg [`MAX_BIT_POS:0] rdata;
    wire write_en;
    wire [`MAX_BIT_POS:0] wdata;
    wire [1:0] byte_size;
    wire mem_busy;
    reg mem_ready;

    // 指令内存接口
    wire inst_read_en;
    wire [`MAX_BIT_POS:0] cur_inst_addr;
    wire [`MAX_BIT_POS:0] next_inst_addr;
    wire inst_ready;
    wire [`MAX_BIT_POS:0] jmp_pc;
    wire jmp_en;
    wire fetch_en;
    reg [`MAX_BIT_POS:0] inst_data;
    reg inst_mem_ready;

    // 中断和异常
    wire [`MAX_BIT_POS:0] exp_pc;
    wire [`MAX_BIT_POS:0] exp_pc_next;
    wire [`MAX_BIT_POS:0] exception_code;
    wire exception_en;
    wire mret_en;
    wire int_jmp_ready;
    reg [`MAX_BIT_POS:0] int_jmp_pc;
    reg int_jmp_en;

    // CSR
    wire [11:0] csr_read_addr;
    reg [`MAX_BIT_POS:0] csr_data;
    wire [11:0] wb_csr_addr;
    wire wb_csr_out_en;
    wire [`MAX_BIT_POS:0] wb_csrw_data;

    cpu_pipeline cpu_pipeline(
        .clk(clk),
        .rst_n(rst_n),
        .read_en(read_en),
        .mem_addr(mem_addr),
        .rdata(rdata),
        .write_en(write_en),
        .wdata(wdata),
        .byte_size(byte_size),
        .mem_busy(mem_busy),
        .mem_ready(mem_ready),
        .int_en(1'b0),
        .exp_pc(exp_pc),
        .exp_pc_next(exp_pc_next),
        .exception_code(exception_code),
        .exception_en(exception_en),
        .mret_en(mret_en),
        .int_jmp_ready(int_jmp_ready),
        .int_jmp_pc(int_jmp_pc),
        .int_jmp_en(int_jmp_en),
        .csr_read_addr(csr_read_addr),
        .csr_data(csr_data),
        .wb_csr_addr(wb_csr_addr),
        .wb_csr_out_en(wb_csr_out_en),
        .wb_csrw_data(wb_csrw_data),
        .inst_read_en(inst_read_en),
        .cur_inst_addr(cur_inst_addr),
        .next_inst_addr(next_inst_addr),
        .inst_ready(inst_ready),
        .jmp_pc(jmp_pc),
        .jmp_en(jmp_en),
        .fetch_en(fetch_en),
        .inst_data(inst_data),
        .inst_mem_ready(inst_mem_ready)
    );

    // 简单的指令内存（直接响应，无延迟）
    reg [31:0] inst_mem [0:63];  // 64 条指令
    integer i;

    initial begin
        // 初始化指令内存
        // addi x1, x0, 1    # x1 = 1
        inst_mem[0] = 32'h00100093;
        // addi x2, x0, 2    # x2 = 2
        inst_mem[1] = 32'h00200113;
        // add x3, x1, x2    # x3 = x1 + x2 = 3
        inst_mem[2] = 32'h002081b3;
        // addi x4, x3, 10   # x4 = x3 + 10 = 13
        inst_mem[3] = 32'h00a18213;
        // sub x5, x4, x1    # x5 = x4 - x1 = 12
        inst_mem[4] = 32'h401202b3;
        // 后续填充 NOP
        for (i = 5; i < 64; i = i + 1) begin
            inst_mem[i] = 32'h00000013;  // NOP (addi x0, x0, 0)
        end
    end

    // 指令内存响应逻辑（立即响应）
    always @(*) begin
        if (inst_read_en && cur_inst_addr[31:2] < 64) begin
            inst_data = inst_mem[cur_inst_addr[31:2]];
            inst_mem_ready = 1'b1;
        end
        else begin
            inst_data = 32'h00000013;  // NOP
            inst_mem_ready = 1'b0;
        end
    end

    // 数据内存（简单响应）
    always @(*) begin
        rdata = 32'h0;
        mem_ready = 1'b1;
    end

    // CSR 寄存器（简单响应）
    always @(*) begin
        csr_data = 32'h0;
    end

    // 中断信号
    initial begin
        int_jmp_pc = 32'h0;
        int_jmp_en = 1'b0;
    end

    // 波形dump
    initial begin
        $fsdbDumpfile("/tmp/cpu_v_build_kid/pipeline_simple.fsdb");
        $fsdbDumpvars(0, cpu_pipeline_simple_tb);
    end

    // 时钟和复位
    initial begin
        clk = 0;
        rst_n = 0;
        #10 rst_n = 1;
        #1000;
        $display("\n========================================");
        $display("Simulation finished");
        $display("========================================");
        $display("Final Register Values:");
        $display("x1 = 0x%h (%0d) - Expected: 1", cpu_pipeline.registers.reg_file[1], cpu_pipeline.registers.reg_file[1]);
        $display("x2 = 0x%h (%0d) - Expected: 2", cpu_pipeline.registers.reg_file[2], cpu_pipeline.registers.reg_file[2]);
        $display("x3 = 0x%h (%0d) - Expected: 3", cpu_pipeline.registers.reg_file[3], cpu_pipeline.registers.reg_file[3]);
        $display("x4 = 0x%h (%0d) - Expected: 13", cpu_pipeline.registers.reg_file[4], cpu_pipeline.registers.reg_file[4]);
        $display("x5 = 0x%h (%0d) - Expected: 12", cpu_pipeline.registers.reg_file[5], cpu_pipeline.registers.reg_file[5]);
        $display("========================================\n");
        $finish;
    end

    always #5 clk = ~clk;

    // 监控关键信号
    always @(posedge clk) begin
        if (rst_n) begin
            $display("Time=%0t: PC=0x%h, inst=0x%h, inst_ready=%b",
                     $time, cur_inst_addr, inst_data, inst_ready);
        end
    end

    // 监控寄存器值（每 50ns 打印一次）
    always @(posedge clk) begin
        if (rst_n && ($time % 50000 == 0)) begin
            $display("=== Registers at Time=%0t ===", $time);
            $display("x1 = 0x%h (%0d)", cpu_pipeline.registers.reg_file[1], cpu_pipeline.registers.reg_file[1]);
            $display("x2 = 0x%h (%0d)", cpu_pipeline.registers.reg_file[2], cpu_pipeline.registers.reg_file[2]);
            $display("x3 = 0x%h (%0d)", cpu_pipeline.registers.reg_file[3], cpu_pipeline.registers.reg_file[3]);
            $display("x4 = 0x%h (%0d)", cpu_pipeline.registers.reg_file[4], cpu_pipeline.registers.reg_file[4]);
            $display("x5 = 0x%h (%0d)", cpu_pipeline.registers.reg_file[5], cpu_pipeline.registers.reg_file[5]);
            $display("================================");
        end
    end

endmodule
