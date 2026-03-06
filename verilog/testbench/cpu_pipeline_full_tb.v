/*
    完整的 CPU Pipeline 测试
    测试14条指令：add, sub, and, or, sll, srl, ori, addi, lw, sw, beq, bne, jal, jalr
    直接测试 cpu_pipeline 模块
*/
`timescale 1ns/1ns
`include "config.v"

module cpu_pipeline_full_tb;
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

    // 数据内存模拟
    reg [31:0] data_mem [0:255];
    integer i;

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

    // 指令内存
    reg [31:0] inst_mem [0:127];

    initial begin
        // 初始化指令内存 - 测试14条指令

        // 测试1: addi - 立即数加法
        inst_mem[0] = 32'h00a00093;   // addi x1, x0, 10      # x1 = 10
        inst_mem[1] = 32'h01400113;   // addi x2, x0, 20      # x2 = 20
        inst_mem[2] = 32'h00500193;   // addi x3, x0, 5       # x3 = 5

        // 测试2: add - 有符号加法
        inst_mem[3] = 32'h00208233;   // add x4, x1, x2       # x4 = 10 + 20 = 30
        inst_mem[4] = 32'h003202b3;   // add x5, x4, x3       # x5 = 30 + 5 = 35

        // 测试3: sub - 有符号减法
        inst_mem[5] = 32'h40110333;   // sub x6, x2, x1       # x6 = 20 - 10 = 10
        inst_mem[6] = 32'h403283b3;   // sub x7, x5, x3       # x7 = 35 - 5 = 30

        // 测试4: and - 按位与
        inst_mem[7] = 32'h0ff00413;   // addi x8, x0, 255     # x8 = 0xFF
        inst_mem[8] = 32'h00f00493;   // addi x9, x0, 15      # x9 = 0x0F
        inst_mem[9] = 32'h00947533;   // and x10, x8, x9      # x10 = 0xFF & 0x0F = 15

        // 测试5: or - 按位或
        inst_mem[10] = 32'h009465b3;  // or x11, x8, x9       # x11 = 0xFF | 0x0F = 255

        // 测试6: ori - 立即数按位或
        inst_mem[11] = 32'h0050e613;  // ori x12, x1, 5       # x12 = 10 | 5 = 15

        // 测试7: sll - 逻辑左移
        inst_mem[12] = 32'h00200693;  // addi x13, x0, 2      # x13 = 2
        inst_mem[13] = 32'h00d19733;  // sll x14, x3, x13     # x14 = 5 << 2 = 20

        // 测试8: srl - 逻辑右移
        inst_mem[14] = 32'h00d157b3;  // srl x15, x2, x13     # x15 = 20 >> 2 = 5

        // 测试9: sw - 字存储
        inst_mem[15] = 32'h10000813;  // addi x16, x0, 256    # x16 = 256 (地址)
        inst_mem[16] = 32'h00482023;  // sw x4, 0(x16)        # mem[256] = 30
        inst_mem[17] = 32'h00582223;  // sw x5, 4(x16)        # mem[260] = 35

        // 测试10: lw - 字加载
        inst_mem[18] = 32'h00082883;  // lw x17, 0(x16)       # x17 = mem[256] = 30
        inst_mem[19] = 32'h00482903;  // lw x18, 4(x16)       # x18 = mem[260] = 35

        // 测试11: beq - 等于转移
        inst_mem[20] = 32'h06400993;  // addi x19, x0, 100    # x19 = 100
        inst_mem[21] = 32'h06400a13;  // addi x20, x0, 100    # x20 = 100
        inst_mem[22] = 32'h01498863;  // beq x19, x20, +16    # 跳转到inst_mem[26]
        inst_mem[23] = 32'h06300a93;  // addi x21, x0, 99     # 不应执行
        inst_mem[24] = 32'h00000013;  // nop
        inst_mem[25] = 32'h00000013;  // nop
        inst_mem[26] = 32'h0c800a93;  // addi x21, x0, 200    # x21 = 200

        // 测试12: bne - 不等于跳转
        inst_mem[27] = 32'h03200b13;  // addi x22, x0, 50     # x22 = 50
        inst_mem[28] = 32'h03c00b93;  // addi x23, x0, 60     # x23 = 60
        inst_mem[29] = 32'h017b1863;  // bne x22, x23, +16    # 跳转到inst_mem[33]
        inst_mem[30] = 32'h05800c13;  // addi x24, x0, 88     # 不应执行
        inst_mem[31] = 32'h00000013;  // nop
        inst_mem[32] = 32'h00000013;  // nop
        inst_mem[33] = 32'h04d00c13;  // addi x24, x0, 77     # x24 = 77

        // 测试13: jal - 跳转并链接
        inst_mem[34] = 32'h010000ef;  // jal x1, +16          # x1=PC+4, 跳转到inst_mem[38]
        inst_mem[35] = 32'h06f00d13;  // addi x26, x0, 111    # 不应执行
        inst_mem[36] = 32'h00000013;  // nop
        inst_mem[37] = 32'h00000013;  // nop
        inst_mem[38] = 32'h0de00d13;  // addi x26, x0, 222    # x26 = 222

        // 测试14: jalr - 跳转并链接寄存器版
        inst_mem[39] = 32'h00000d93;  // addi x27, x0, 0      # x27 = 0
        inst_mem[40] = 32'h0b000e13;  // addi x28, x0, 176    # x28 = 44*4 = 176 (inst_mem[44]地址)
        inst_mem[41] = 32'h000e0d67;  // jalr x26, x28, 0     # x26=PC+4, 跳转到x28
        inst_mem[42] = 32'h14d00e93;  // addi x29, x0, 333    # 不应执行
        inst_mem[43] = 32'h00000013;  // nop
        inst_mem[44] = 32'h1bc00e93;  // addi x29, x0, 444    # x29 = 444

        // 测试完成标志
        inst_mem[45] = 32'hfff00f93;  // addi x31, x0, 0xFFF  # x31 = 0xFFF
        inst_mem[46] = 32'h0000006f;  // jal x0, 0            # 无限循环

        // 填充剩余指令为 NOP
        for (i = 47; i < 128; i = i + 1) begin
            inst_mem[i] = 32'h00000013;  // NOP
        end

        // 初始化数据内存
        for (i = 0; i < 256; i = i + 1) begin
            data_mem[i] = 32'h0;
        end
    end

    // 指令内存响应逻辑
    always @(*) begin
        if (inst_read_en && cur_inst_addr[31:2] < 128) begin
            inst_data = inst_mem[cur_inst_addr[31:2]];
            inst_mem_ready = 1'b1;
        end
        else begin
            inst_data = 32'h00000013;  // NOP
            inst_mem_ready = 1'b0;
        end
    end

    // 数据内存响应逻辑
    always @(posedge clk) begin
        if (rst_n) begin
            if (write_en && mem_addr[31:2] < 256) begin
                data_mem[mem_addr[31:2]] <= wdata;
                $display("Time=%0t: SW - mem[0x%h] = 0x%h", $time, mem_addr, wdata);
            end
        end
    end

    always @(*) begin
        if (read_en && mem_addr[31:2] < 256) begin
            rdata = data_mem[mem_addr[31:2]];
            mem_ready = 1'b1;
        end
        else begin
            rdata = 32'h0;
            mem_ready = 1'b1;
        end
    end

    // CSR 寄存器
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
        $fsdbDumpfile("/tmp/cpu_v_build_kid/pipeline_full.fsdb");
        $fsdbDumpvars(0, cpu_pipeline_full_tb);
    end

    // 时钟和复位
    initial begin
        clk = 0;
        rst_n = 0;
        #20 rst_n = 1;
        #5000;

        $display("\n========================================");
        $display("流水线完整指令测试完成");
        $display("========================================");
        $display("寄存器最终值:");
        $display("x1  = 0x%h (%0d) - Expected: PC+4 from jal",
                 cpu_pipeline.registers.reg_file[1], cpu_pipeline.registers.reg_file[1]);
        $display("x2  = 0x%h (%0d) - Expected: 20",
                 cpu_pipeline.registers.reg_file[2], cpu_pipeline.registers.reg_file[2]);
        $display("x3  = 0x%h (%0d) - Expected: 5",
                 cpu_pipeline.registers.reg_file[3], cpu_pipeline.registers.reg_file[3]);
        $display("x4  = 0x%h (%0d) - Expected: 30 (add)",
                 cpu_pipeline.registers.reg_file[4], cpu_pipeline.registers.reg_file[4]);
        $display("x5  = 0x%h (%0d) - Expected: 35 (add)",
                 cpu_pipeline.registers.reg_file[5], cpu_pipeline.registers.reg_file[5]);
        $display("x6  = 0x%h (%0d) - Expected: 10 (sub)",
                 cpu_pipeline.registers.reg_file[6], cpu_pipeline.registers.reg_file[6]);
        $display("x7  = 0x%h (%0d) - Expected: 30 (sub)",
                 cpu_pipeline.registers.reg_file[7], cpu_pipeline.registers.reg_file[7]);
        $display("x10 = 0x%h (%0d) - Expected: 15 (and)",
                 cpu_pipeline.registers.reg_file[10], cpu_pipeline.registers.reg_file[10]);
        $display("x11 = 0x%h (%0d) - Expected: 255 (or)",
                 cpu_pipeline.registers.reg_file[11], cpu_pipeline.registers.reg_file[11]);
        $display("x12 = 0x%h (%0d) - Expected: 15 (ori)",
                 cpu_pipeline.registers.reg_file[12], cpu_pipeline.registers.reg_file[12]);
        $display("x14 = 0x%h (%0d) - Expected: 20 (sll)",
                 cpu_pipeline.registers.reg_file[14], cpu_pipeline.registers.reg_file[14]);
        $display("x15 = 0x%h (%0d) - Expected: 5 (srl)",
                 cpu_pipeline.registers.reg_file[15], cpu_pipeline.registers.reg_file[15]);
        $display("x17 = 0x%h (%0d) - Expected: 30 (lw)",
                 cpu_pipeline.registers.reg_file[17], cpu_pipeline.registers.reg_file[17]);
        $display("x18 = 0x%h (%0d) - Expected: 35 (lw)",
                 cpu_pipeline.registers.reg_file[18], cpu_pipeline.registers.reg_file[18]);
        $display("x21 = 0x%h (%0d) - Expected: 200 (beq)",
                 cpu_pipeline.registers.reg_file[21], cpu_pipeline.registers.reg_file[21]);
        $display("x24 = 0x%h (%0d) - Expected: 77 (bne)",
                 cpu_pipeline.registers.reg_file[24], cpu_pipeline.registers.reg_file[24]);
        $display("x26 = 0x%h (%0d) - Expected: 222 (jal)",
                 cpu_pipeline.registers.reg_file[26], cpu_pipeline.registers.reg_file[26]);
        $display("x29 = 0x%h (%0d) - Expected: 444 (jalr)",
                 cpu_pipeline.registers.reg_file[29], cpu_pipeline.registers.reg_file[29]);
        $display("x31 = 0x%h (%0d) - Expected: 0xFFF (完成标志)",
                 cpu_pipeline.registers.reg_file[31], cpu_pipeline.registers.reg_file[31]);
        $display("========================================\n");
        $finish;
    end

    always #5 clk = ~clk;

    // 监控PC和指令
    always @(posedge clk) begin
        if (rst_n) begin
            $display("Time=%0t: PC=0x%h, inst=0x%h",
                     $time, cur_inst_addr, inst_data);
        end
    end

endmodule
