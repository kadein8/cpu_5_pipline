`timescale 1ns/1ns
`include "config.v"

module soc_peripheral_bus_tb;
    reg clk;
    reg rst_n;
    reg clk_timer;

    // Flash interface
    wire [`MAX_BIT_POS:0] digital_flash_addr;
    wire digital_flash_write_en;
    wire digital_flash_read_en;
    wire [2:0] digital_flash_byte_size;
    wire [7:0] digital_flash_wdata;
    reg [7:0] digital_flash_data;
    reg digital_flash_ready;

    // RAM interface
    wire [`MAX_BIT_POS:0] digital_mem_addr;
    wire digital_mem_write_en;
    wire digital_mem_read_en;
    wire [3:0] digital_mem_byte_size;
    wire [`MAX_BIT_POS:0] digital_mem_wdata;
    reg [`MAX_BIT_POS:0] digital_mem_data;
    reg digital_mem_ready;

    // GPIO interface
    wire [`GPIO_NUMS-1:0] gpio_values;

    // Configuration
    localparam integer NUM_ROUNDS    = 20;
    localparam integer ROUND_RUNTIME = 15000;
    localparam integer VERBOSE_TRACE = 0;

    digital_soc soc(
        .clk(clk),
        .rst_n(rst_n),
        .clk_timer(clk_timer),
        .digital_flash_addr(digital_flash_addr),
        .digital_flash_write_en(digital_flash_write_en),
        .digital_flash_read_en(digital_flash_read_en),
        .digital_flash_byte_size(digital_flash_byte_size),
        .digital_flash_wdata(digital_flash_wdata),
        .digital_flash_data(digital_flash_data),
        .digital_flash_ready(digital_flash_ready),
        .digital_mem_addr(digital_mem_addr),
        .digital_mem_write_en(digital_mem_write_en),
        .digital_mem_read_en(digital_mem_read_en),
        .digital_mem_byte_size(digital_mem_byte_size),
        .digital_mem_wdata(digital_mem_wdata),
        .digital_mem_data(digital_mem_data),
        .digital_mem_ready(digital_mem_ready),
        .gpio_values(gpio_values)
    );

    // Debug mirrors for register file values.
    wire [`MAX_BIT_POS:0] dbg_x1;
    wire [`MAX_BIT_POS:0] dbg_x2;
    wire [`MAX_BIT_POS:0] dbg_x3;
    wire [`MAX_BIT_POS:0] dbg_x4;
    wire [`MAX_BIT_POS:0] dbg_x5;
    wire [`MAX_BIT_POS:0] dbg_x6;
    wire [`MAX_BIT_POS:0] dbg_x7;
    wire [`MAX_BIT_POS:0] dbg_x8;
    wire [`MAX_BIT_POS:0] dbg_x9;
    wire [`MAX_BIT_POS:0] dbg_x10;
    wire [`MAX_BIT_POS:0] dbg_x11;
    wire [`MAX_BIT_POS:0] dbg_x12;
    wire [`MAX_BIT_POS:0] dbg_x13;
    wire [`MAX_BIT_POS:0] dbg_x14;
    wire [`MAX_BIT_POS:0] dbg_x15;
    wire [`MAX_BIT_POS:0] dbg_x16;
    wire [`MAX_BIT_POS:0] dbg_x17;
    wire [`MAX_BIT_POS:0] dbg_x18;
    wire [`MAX_BIT_POS:0] dbg_x19;
    wire [`MAX_BIT_POS:0] dbg_x20;
    wire [`MAX_BIT_POS:0] dbg_x21;
    wire [`MAX_BIT_POS:0] dbg_x22;
    wire [`MAX_BIT_POS:0] dbg_x23;
    wire [`MAX_BIT_POS:0] dbg_x24;
    wire [`MAX_BIT_POS:0] dbg_x25;
    wire [`MAX_BIT_POS:0] dbg_x26;
    wire [`MAX_BIT_POS:0] dbg_x27;
    wire [`MAX_BIT_POS:0] dbg_x28;
    wire [`MAX_BIT_POS:0] dbg_x29;
    wire [`MAX_BIT_POS:0] dbg_x30;
    wire [`MAX_BIT_POS:0] dbg_x31;

    assign dbg_x1      = soc.cpu.cpu_pipeline.registers.reg_file[1];
    assign dbg_x2      = soc.cpu.cpu_pipeline.registers.reg_file[2];
    assign dbg_x3      = soc.cpu.cpu_pipeline.registers.reg_file[3];
    assign dbg_x4      = soc.cpu.cpu_pipeline.registers.reg_file[4];
    assign dbg_x5      = soc.cpu.cpu_pipeline.registers.reg_file[5];
    assign dbg_x6      = soc.cpu.cpu_pipeline.registers.reg_file[6];
    assign dbg_x7      = soc.cpu.cpu_pipeline.registers.reg_file[7];
    assign dbg_x8      = soc.cpu.cpu_pipeline.registers.reg_file[8];
    assign dbg_x9      = soc.cpu.cpu_pipeline.registers.reg_file[9];
    assign dbg_x10     = soc.cpu.cpu_pipeline.registers.reg_file[10];
    assign dbg_x11     = soc.cpu.cpu_pipeline.registers.reg_file[11];
    assign dbg_x12     = soc.cpu.cpu_pipeline.registers.reg_file[12];
    assign dbg_x13     = soc.cpu.cpu_pipeline.registers.reg_file[13];
    assign dbg_x14     = soc.cpu.cpu_pipeline.registers.reg_file[14];
    assign dbg_x15     = soc.cpu.cpu_pipeline.registers.reg_file[15];
    assign dbg_x16     = soc.cpu.cpu_pipeline.registers.reg_file[16];
    assign dbg_x17     = soc.cpu.cpu_pipeline.registers.reg_file[17];
    assign dbg_x18     = soc.cpu.cpu_pipeline.registers.reg_file[18];
    assign dbg_x19     = soc.cpu.cpu_pipeline.registers.reg_file[19];
    assign dbg_x20     = soc.cpu.cpu_pipeline.registers.reg_file[20];
    assign dbg_x21     = soc.cpu.cpu_pipeline.registers.reg_file[21];
    assign dbg_x22     = soc.cpu.cpu_pipeline.registers.reg_file[22];
    assign dbg_x23     = soc.cpu.cpu_pipeline.registers.reg_file[23];
    assign dbg_x24     = soc.cpu.cpu_pipeline.registers.reg_file[24];
    assign dbg_x25     = soc.cpu.cpu_pipeline.registers.reg_file[25];
    assign dbg_x26     = soc.cpu.cpu_pipeline.registers.reg_file[26];
    assign dbg_x27     = soc.cpu.cpu_pipeline.registers.reg_file[27];
    assign dbg_x28     = soc.cpu.cpu_pipeline.registers.reg_file[28];
    assign dbg_x29     = soc.cpu.cpu_pipeline.registers.reg_file[29];
    assign dbg_x30     = soc.cpu.cpu_pipeline.registers.reg_file[30];
    assign dbg_x31     = soc.cpu.cpu_pipeline.registers.reg_file[31];

    // Program memory, expected values, and randomization state.
    reg [7:0] flash_mem [0:4095];
    reg [31:0] expected_reg [0:31];
    reg expected_valid [0:31];
    reg [31:0] ram_mem [0:1023];

    integer i;
    integer round_idx;
    integer round_pass_count;
    integer round_fail_count;
    integer seed;
    integer bus_write_cycles;
    reg saw_external_write;
    reg round_failed;

    integer reg_pool [0:9];
    integer r_a, r_b, r_add, r_sub, r_and, r_or, r_shamt, r_sll, r_srl, r_ori;
    integer val_a, val_b, shamt_v, ori_imm_v, mem_v;
    integer val_x14, val_x15, val_x16, val_x18, val_x21;
    integer val_x22, val_x23, val_x24, val_x25, val_x26;

    function [31:0] enc_i;
        input [6:0] opcode;
        input [4:0] rd;
        input [2:0] funct3;
        input [4:0] rs1;
        input integer imm;
        reg [11:0] imm12;
    begin
        imm12 = imm[11:0];
        enc_i = {imm12, rs1, funct3, rd, opcode};
    end
    endfunction

    function [31:0] enc_r;
        input [6:0] opcode;
        input [4:0] rd;
        input [2:0] funct3;
        input [4:0] rs1;
        input [4:0] rs2;
        input [6:0] funct7;
    begin
        enc_r = {funct7, rs2, rs1, funct3, rd, opcode};
    end
    endfunction

    function [31:0] enc_s;
        input [6:0] opcode;
        input [2:0] funct3;
        input [4:0] rs1;
        input [4:0] rs2;
        input integer imm;
        reg [11:0] imm12;
    begin
        imm12 = imm[11:0];
        enc_s = {imm12[11:5], rs2, rs1, funct3, imm12[4:0], opcode};
    end
    endfunction

    function [31:0] enc_b;
        input [6:0] opcode;
        input [2:0] funct3;
        input [4:0] rs1;
        input [4:0] rs2;
        input integer imm;
        reg [12:0] imm13;
    begin
        imm13 = imm[12:0];
        enc_b = {imm13[12], imm13[10:5], rs2, rs1, funct3, imm13[4:1], imm13[11], opcode};
    end
    endfunction

    function [31:0] enc_u;
        input [6:0] opcode;
        input [4:0] rd;
        input [19:0] imm20;
    begin
        enc_u = {imm20, rd, opcode};
    end
    endfunction

    function [31:0] enc_j;
        input [6:0] opcode;
        input [4:0] rd;
        input integer imm;
        reg [20:0] imm21;
    begin
        imm21 = imm[20:0];
        enc_j = {imm21[20], imm21[10:1], imm21[11], imm21[19:12], rd, opcode};
    end
    endfunction

    task put_inst;
        input integer idx;
        input [31:0] inst;
        integer base;
    begin
        base = idx * 4;
        flash_mem[base + 0] = inst[7:0];
        flash_mem[base + 1] = inst[15:8];
        flash_mem[base + 2] = inst[23:16];
        flash_mem[base + 3] = inst[31:24];
    end
    endtask

    task clear_flash_mem;
        integer k;
    begin
        for (k = 0; k < 4096; k = k + 1) begin
            flash_mem[k] = 8'h00;
        end
    end
    endtask

    task clear_expected_regs;
        integer k;
    begin
        for (k = 0; k < 32; k = k + 1) begin
            expected_reg[k] = 32'h0;
            expected_valid[k] = 1'b0;
        end
    end
    endtask

    task expect_reg;
        input integer idx;
        input [31:0] val;
    begin
        expected_reg[idx] = val;
        expected_valid[idx] = 1'b1;
    end
    endtask

    task rand_range;
        input integer min_v;
        input integer max_v;
        output integer out_v;
        integer span_v;
        integer rand_v;
    begin
        span_v = max_v - min_v + 1;
        rand_v = $random(seed);
        if (rand_v < 0) begin
            rand_v = -rand_v;
        end
        out_v = min_v + (rand_v % span_v);
    end
    endtask

    task build_random_program;
        integer add_sum;
        integer swap_tmp;
        integer pick_idx;
        integer k;
    begin
        clear_flash_mem();
        clear_expected_regs();

        for (k = 0; k < 10; k = k + 1) begin
            reg_pool[k] = k + 1;
        end
        for (k = 9; k > 0; k = k - 1) begin
            rand_range(0, k, pick_idx);
            swap_tmp = reg_pool[k];
            reg_pool[k] = reg_pool[pick_idx];
            reg_pool[pick_idx] = swap_tmp;
        end

        r_a     = reg_pool[0];
        r_b     = reg_pool[1];
        r_add   = reg_pool[2];
        r_sub   = reg_pool[3];
        r_and   = reg_pool[4];
        r_or    = reg_pool[5];
        r_shamt = reg_pool[6];
        r_sll   = reg_pool[7];
        r_srl   = reg_pool[8];
        r_ori   = reg_pool[9];

        rand_range(12, 60, val_a);
        rand_range(1, 30, val_b);
        if (val_b >= val_a) begin
            swap_tmp = val_a;
            val_a = val_b + 1;
            val_b = swap_tmp;
        end

        rand_range(1, 4, shamt_v);
        rand_range(1, 255, ori_imm_v);
        rand_range(80, 220, mem_v);
        add_sum = val_a + val_b;
        if (mem_v == add_sum) begin
            mem_v = mem_v + 1;
        end

        rand_range(1, 15, val_x14);
        rand_range(16, 95, val_x15);
        rand_range(96, 191, val_x16);
        rand_range(64, 127, val_x18);
        rand_range(128, 255, val_x21);
        rand_range(1, 255, val_x22);
        rand_range(1, 255, val_x23);
        rand_range(1, 255, val_x24);
        rand_range(1, 255, val_x25);
        rand_range(1, 255, val_x26);

        put_inst(0,  enc_i(7'h13, r_a[4:0],    3'b000, 5'd0,       val_a));
        put_inst(1,  enc_i(7'h13, r_b[4:0],    3'b000, 5'd0,       val_b));
        put_inst(2,  enc_r(7'h33, r_add[4:0],  3'b000, r_a[4:0],   r_b[4:0], 7'h00));
        put_inst(3,  enc_r(7'h33, r_sub[4:0],  3'b000, r_a[4:0],   r_b[4:0], 7'h20));
        put_inst(4,  enc_r(7'h33, r_and[4:0],  3'b111, r_a[4:0],   r_b[4:0], 7'h00));
        put_inst(5,  enc_r(7'h33, r_or[4:0],   3'b110, r_a[4:0],   r_b[4:0], 7'h00));
        put_inst(6,  enc_i(7'h13, r_shamt[4:0],3'b000, 5'd0,       shamt_v));
        put_inst(7,  enc_r(7'h33, r_sll[4:0],  3'b001, r_b[4:0],   r_shamt[4:0], 7'h00));
        put_inst(8,  enc_r(7'h33, r_srl[4:0],  3'b101, r_a[4:0],   r_shamt[4:0], 7'h00));
        put_inst(9,  enc_i(7'h13, r_ori[4:0],  3'b110, r_b[4:0],   ori_imm_v));
        put_inst(10, enc_i(7'h13, 5'd11,       3'b000, 5'd0,       mem_v));
        put_inst(11, enc_u(7'h37, 5'd12,       20'h10000));
        put_inst(12, enc_s(7'h23, 3'b010,      5'd12,  5'd11,      0));
        put_inst(13, enc_i(7'h03, 5'd13,       3'b010, 5'd12,      0));
        put_inst(14, enc_i(7'h13, 5'd14,       3'b000, 5'd0,       val_x14));
        put_inst(15, enc_b(7'h63, 3'b000,      5'd13,  5'd11,      8));
        put_inst(16, enc_i(7'h13, 5'd14,       3'b000, 5'd0,       8'h55));
        put_inst(17, enc_i(7'h13, 5'd15,       3'b000, 5'd0,       val_x15));
        put_inst(18, enc_b(7'h63, 3'b001,      5'd13,  r_add[4:0], 8));
        put_inst(19, enc_i(7'h13, 5'd16,       3'b000, 5'd0,       8'h66));
        put_inst(20, enc_i(7'h13, 5'd16,       3'b000, 5'd0,       val_x16));
        put_inst(21, enc_j(7'h6f, 5'd17,       8));
        put_inst(22, enc_i(7'h13, 5'd18,       3'b000, 5'd0,       8'h11));
        put_inst(23, enc_i(7'h13, 5'd18,       3'b000, 5'd0,       val_x18));
        put_inst(24, enc_i(7'h13, 5'd19,       3'b000, 5'd0,       8'h70));
        put_inst(25, enc_i(7'h67, 5'd20,       3'b000, 5'd19,      0));
        put_inst(26, enc_i(7'h13, 5'd21,       3'b000, 5'd0,       8'h33));
        put_inst(27, enc_j(7'h6f, 5'd0,        8));
        put_inst(28, enc_i(7'h13, 5'd21,       3'b000, 5'd0,       val_x21));
        put_inst(29, enc_i(7'h13, 5'd22,       3'b000, 5'd0,       val_x22));
        put_inst(30, enc_i(7'h13, 5'd23,       3'b000, 5'd0,       val_x23));
        put_inst(31, enc_i(7'h13, 5'd24,       3'b000, 5'd0,       val_x24));
        put_inst(32, enc_i(7'h13, 5'd25,       3'b000, 5'd0,       val_x25));
        put_inst(33, enc_i(7'h13, 5'd26,       3'b000, 5'd0,       val_x26));
        put_inst(34, enc_i(7'h13, 5'd27,       3'b000, 5'd12,      12'h400));
        put_inst(35, enc_i(7'h13, 5'd28,       3'b000, 5'd27,      12'h400));
        put_inst(36, enc_i(7'h13, 5'd29,       3'b000, 5'd28,      12'h400));
        put_inst(37, enc_i(7'h13, 5'd30,       3'b000, 5'd29,      12'h400));
        put_inst(38, enc_s(7'h23, 3'b010,      5'd12,  5'd22,      0));
        put_inst(39, enc_s(7'h23, 3'b010,      5'd12,  5'd22,      0));
        put_inst(40, enc_s(7'h23, 3'b010,      5'd27,  5'd23,      0));
        put_inst(41, enc_s(7'h23, 3'b010,      5'd27,  5'd23,      0));
        put_inst(42, enc_s(7'h23, 3'b010,      5'd28,  5'd24,      0));
        put_inst(43, enc_s(7'h23, 3'b010,      5'd28,  5'd24,      0));
        put_inst(44, enc_s(7'h23, 3'b010,      5'd29,  5'd25,      0));
        put_inst(45, enc_s(7'h23, 3'b010,      5'd29,  5'd25,      0));
        put_inst(46, enc_s(7'h23, 3'b010,      5'd30,  5'd26,      0));
        put_inst(47, enc_s(7'h23, 3'b010,      5'd30,  5'd26,      0));
        put_inst(48, enc_i(7'h13, 5'd31,       3'b000, 5'd0,       8'hff));
        put_inst(49, enc_j(7'h6f, 5'd0,        0));

        expect_reg(0, 32'h00000000);
        expect_reg(r_a, val_a);
        expect_reg(r_b, val_b);
        expect_reg(r_add, add_sum);
        expect_reg(r_sub, val_a - val_b);
        expect_reg(r_and, val_a & val_b);
        expect_reg(r_or,  val_a | val_b);
        expect_reg(r_shamt, shamt_v);
        expect_reg(r_sll, val_b << shamt_v);
        expect_reg(r_srl, val_a >> shamt_v);
        expect_reg(r_ori, val_b | ori_imm_v);

        expect_reg(11, mem_v);
        expect_reg(12, 32'h10000000);
        expect_reg(13, mem_v);
        expect_reg(14, val_x14);
        expect_reg(15, val_x15);
        expect_reg(16, val_x16);
        expect_reg(17, 32'h00000058);
        expect_reg(18, val_x18);
        expect_reg(19, 32'h00000070);
        expect_reg(20, 32'h00000068);
        expect_reg(21, val_x21);
        expect_reg(22, val_x22);
        expect_reg(23, val_x23);
        expect_reg(24, val_x24);
        expect_reg(25, val_x25);
        expect_reg(26, val_x26);
        expect_reg(27, 32'h10000400);
        expect_reg(28, 32'h10000800);
        expect_reg(29, 32'h10000c00);
        expect_reg(30, 32'h10001000);
        expect_reg(31, 32'h000000ff);

        $display("\n[ROUND %0d] Generated program", round_idx);
        $display("  regs: ra=x%0d rb=x%0d add=x%0d sub=x%0d and=x%0d or=x%0d",
                 r_a, r_b, r_add, r_sub, r_and, r_or);
        $display("  regs: shamt=x%0d sll=x%0d srl=x%0d ori=x%0d",
                 r_shamt, r_sll, r_srl, r_ori);
        $display("  vals: a=%0d b=%0d shamt=%0d ori_imm=%0d mem=%0d",
                 val_a, val_b, shamt_v, ori_imm_v, mem_v);
    end
    endtask

    task check_round_result;
        integer idx;
        reg [31:0] actual_val;
    begin
        round_failed = 1'b0;
        if (!saw_external_write || bus_write_cycles <= 0) begin
            round_failed = 1'b1;
            $display("[ROUND %0d] FAIL: no external write-back observed (saw=%0d, cycles=%0d)",
                     round_idx, saw_external_write, bus_write_cycles);
        end

        for (idx = 0; idx < 32; idx = idx + 1) begin
            if (expected_valid[idx]) begin
                actual_val = soc.cpu.cpu_pipeline.registers.reg_file[idx];
                if (actual_val !== expected_reg[idx]) begin
                    round_failed = 1'b1;
                    $display("[ROUND %0d] FAIL: x%0d actual=0x%h expected=0x%h",
                             round_idx, idx, actual_val, expected_reg[idx]);
                end
            end
        end
    end
    endtask

    // Flash read logic
    always @(*) begin
        if (digital_flash_read_en && digital_flash_addr < 4096) begin
            digital_flash_data = flash_mem[digital_flash_addr];
            digital_flash_ready = 1'b1;
        end else begin
            digital_flash_data = 8'h00;
            digital_flash_ready = 1'b0;
        end
    end

    // RAM model
    always @(posedge clk) begin
        if (rst_n) begin
            if (digital_mem_write_en) begin
                case (digital_mem_byte_size)
                    4'b0001: ram_mem[digital_mem_addr[11:2]][7:0] <= digital_mem_wdata[7:0];
                    4'b0011: ram_mem[digital_mem_addr[11:2]][15:0] <= digital_mem_wdata[15:0];
                    4'b1111: ram_mem[digital_mem_addr[11:2]] <= digital_mem_wdata;
                    default: ram_mem[digital_mem_addr[11:2]] <= digital_mem_wdata;
                endcase
                if (VERBOSE_TRACE) begin
                    $display("Time=%0t: RAM WRITE - addr=0x%h, data=0x%h, size=%b",
                             $time, digital_mem_addr, digital_mem_wdata, digital_mem_byte_size);
                end
            end
        end
    end

    always @(*) begin
        if (digital_mem_read_en && digital_mem_addr[31:12] == 20'h10000) begin
            digital_mem_data = ram_mem[digital_mem_addr[11:2]];
            digital_mem_ready = 1'b1;
        end else begin
            digital_mem_data = 32'h0;
            digital_mem_ready = 1'b1;
        end
    end

    // Keep GPIO high-Z so the SoC can drive outputs.
    assign gpio_values = {`GPIO_NUMS{1'bz}};

    // Waveform dump
    initial begin
        $fsdbDumpfile("/tmp/cpu_v_build_kid/soc_peripheral_bus.fsdb");
        $fsdbDumpvars(0, soc_peripheral_bus_tb);
        $fsdbDumpMDA(0, soc_peripheral_bus_tb);
    end

    // Clock generation
    initial begin
        clk = 0;
        clk_timer = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        forever #50 clk_timer = ~clk_timer;
    end

    // Randomized multi-round stress control
    initial begin
        seed = 32'h20260306;
        round_pass_count = 0;
        round_fail_count = 0;
        round_failed = 1'b0;
        bus_write_cycles = 0;
        saw_external_write = 1'b0;
        rst_n = 0;

        clear_flash_mem();
        clear_expected_regs();
        for (i = 0; i < 1024; i = i + 1) begin
            ram_mem[i] = 32'h0;
        end

        for (round_idx = 0; round_idx < NUM_ROUNDS; round_idx = round_idx + 1) begin
            build_random_program();

            for (i = 0; i < 1024; i = i + 1) begin
                ram_mem[i] = 32'h0;
            end
            bus_write_cycles = 0;
            saw_external_write = 1'b0;

            rst_n = 0;
            #20 rst_n = 1;
            #ROUND_RUNTIME;

            check_round_result();

            if (round_failed) begin
                round_fail_count = round_fail_count + 1;
                $display("[ROUND %0d] RESULT: FAIL", round_idx);
            end else begin
                round_pass_count = round_pass_count + 1;
                $display("[ROUND %0d] RESULT: PASS", round_idx);
            end
            $display("----------------------------------------");
        end

        $display("\n========================================");
        $display("Randomized ISA + Dirty-WriteBack Stress Summary");
        $display("========================================");
        $display("Total rounds : %0d", NUM_ROUNDS);
        $display("Pass rounds  : %0d", round_pass_count);
        $display("Fail rounds  : %0d", round_fail_count);
        if (round_fail_count == 0) begin
            $display("PASS: randomized stress test passed!");
        end else begin
            $display("FAIL: randomized stress test failed!");
        end
        $display("========================================\n");
        $finish;
    end

    // Bus activity monitor
    always @(posedge clk) begin
        if (rst_n) begin
            if (digital_mem_write_en) begin
                bus_write_cycles = bus_write_cycles + 1;
                saw_external_write = 1'b1;
            end

            if (VERBOSE_TRACE) begin
                if (soc.io_write) begin
                    $display("Time=%0t: CPU WRITE REQUEST - addr=0x%h, data=0x%h, ready=%b",
                             $time, soc.io_addr, soc.io_wdata, soc.io_ready);
                end
                if (soc.io_read) begin
                    $display("Time=%0t: CPU READ REQUEST - addr=0x%h, ready=%b",
                             $time, soc.io_addr, soc.io_ready);
                end
                if (soc.cpu.cpu_pipeline.wb_rd_en) begin
                    $display("Time=%0t: WB COMMIT - rd=x%0d, data=0x%h",
                             $time, soc.cpu.cpu_pipeline.wb_rd, soc.cpu.cpu_pipeline.wb_rd_data);
                end
                if (digital_mem_read_en) begin
                    $display("Time=%0t: BUS READ - addr=0x%h", $time, digital_mem_addr);
                end
                if (digital_mem_write_en) begin
                    $display("Time=%0t: BUS WRITE - addr=0x%h, data=0x%h",
                             $time, digital_mem_addr, digital_mem_wdata);
                end
                if (digital_flash_read_en) begin
                    $display("Time=%0t: FLASH READ - addr=0x%h, data=0x%h",
                             $time, digital_flash_addr, digital_flash_data);
                end
            end
        end
    end

endmodule
