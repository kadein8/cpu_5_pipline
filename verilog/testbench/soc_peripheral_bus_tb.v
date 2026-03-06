/*
    闂佽娴烽幊鎾诲嫉椤掑嫬姹查柨婵嗩槹閸庡秹鏌涢弴銊ヤ航婵☆垰妫濋幃瑙勬媴閻熸澘濮㈤梺纭呮腹閸楁娊鐛埀顒勬煠婵劕鈧洖鈻撻悩宕囩闁哄鍩堥崕鎾绘煟?    婵犵數鍋炲娆擃敄閸儲鍎婇柣銈咁劍U闂傚倷绶￠崑鍛┍閾忚宕查柛鎰靛枛缁犳垿鏌ゆ慨鎰偓鏇炩枔閻樼粯鍋ｅù锝呮啞閸嬨儲淇婇銇渽M闂備線娼уΛ鏃傜箔閵栧嚘O缂傚倷鐒︾粙鎴λ囬鐐堝洭鎳￠妶鍡楊€?    闂備胶纭堕弲鐐差浖閵娧嗗С妞ゆ帊鑳堕々鏌ユ煛閸愩劌鈧潡鎮伴幘瀵哥缂傚牏濮烽崝宥夋煙缁嬫妲洪柣銉簽濞嗐垻绱為悮?
*/
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

    // 闂佽楠稿﹢閬嶅磻濡吋顐介柕澶嗘櫅缁€宀勬煛閸偅鐓廋
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

    // Debug mirrors for register file values (easier to view in older Verdi).
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

    // Flash婵犵妲呴崹顏堝礈濠靛牃鍋撳顓犳噰闁轰礁绉瑰畷濂告偄妞嬪孩鈻屽┑鐐差嚟婵即宕愰弴銏″仱闁靛ň鏅涚壕鍏笺亜椤撶喎绗х紒鈧?
    reg [7:0] flash_mem [0:4095];
    integer i;
    integer reg_idx;
    integer bus_write_cycles;
    reg saw_external_write;

    initial begin
        // Combined ISA + dirty write-back program:
        // Covers add/sub/and/or/sll/srl/ori/addi/lw/sw/beq/bne/jal/jalr
        // and forces dirty-line eviction (external write-back observed on bus).

        flash_mem[0]   = 8'h13; flash_mem[1]   = 8'h02; flash_mem[2]   = 8'h90; flash_mem[3]   = 8'h00; // addi x4, x0, 9
        flash_mem[4]   = 8'h93; flash_mem[5]   = 8'h01; flash_mem[6]   = 8'h40; flash_mem[7]   = 8'h00; // addi x3, x0, 4
        flash_mem[8]   = 8'h33; flash_mem[9]   = 8'h01; flash_mem[10]  = 8'h32; flash_mem[11]  = 8'h00; // add  x2, x4, x3
        flash_mem[12]  = 8'hb3; flash_mem[13]  = 8'h00; flash_mem[14]  = 8'h32; flash_mem[15]  = 8'h40; // sub  x1, x4, x3
        flash_mem[16]  = 8'h33; flash_mem[17]  = 8'h73; flash_mem[18]  = 8'h32; flash_mem[19]  = 8'h00; // and  x6, x4, x3
        flash_mem[20]  = 8'hb3; flash_mem[21]  = 8'h63; flash_mem[22]  = 8'h32; flash_mem[23]  = 8'h00; // or   x7, x4, x3
        flash_mem[24]  = 8'h93; flash_mem[25]  = 8'h02; flash_mem[26]  = 8'h10; flash_mem[27]  = 8'h00; // addi x5, x0, 1
        flash_mem[28]  = 8'h33; flash_mem[29]  = 8'h94; flash_mem[30]  = 8'h51; flash_mem[31]  = 8'h00; // sll  x8, x3, x5
        flash_mem[32]  = 8'hb3; flash_mem[33]  = 8'h54; flash_mem[34]  = 8'h52; flash_mem[35]  = 8'h00; // srl  x9, x4, x5
        flash_mem[36]  = 8'h13; flash_mem[37]  = 8'he5; flash_mem[38]  = 8'h81; flash_mem[39]  = 8'h01; // ori  x10, x3, 0x18
        flash_mem[40]  = 8'h93; flash_mem[41]  = 8'h05; flash_mem[42]  = 8'h60; flash_mem[43]  = 8'h09; // addi x11, x0, 150
        flash_mem[44]  = 8'h37; flash_mem[45]  = 8'h06; flash_mem[46]  = 8'h00; flash_mem[47]  = 8'h10; // lui  x12, 0x10000
        flash_mem[48]  = 8'h23; flash_mem[49]  = 8'h20; flash_mem[50]  = 8'hb6; flash_mem[51]  = 8'h00; // sw   x11, 0(x12)
        flash_mem[52]  = 8'h83; flash_mem[53]  = 8'h26; flash_mem[54]  = 8'h06; flash_mem[55]  = 8'h00; // lw   x13, 0(x12)
        flash_mem[56]  = 8'h13; flash_mem[57]  = 8'h07; flash_mem[58]  = 8'h20; flash_mem[59]  = 8'h00; // addi x14, x0, 2
        flash_mem[60]  = 8'h63; flash_mem[61]  = 8'h84; flash_mem[62]  = 8'hb6; flash_mem[63]  = 8'h00; // beq  x13, x11, +8
        flash_mem[64]  = 8'h13; flash_mem[65]  = 8'h07; flash_mem[66]  = 8'h50; flash_mem[67]  = 8'h05; // addi x14, x0, 0x55 (skip)
        flash_mem[68]  = 8'h93; flash_mem[69]  = 8'h07; flash_mem[70]  = 8'ha0; flash_mem[71]  = 8'h05; // addi x15, x0, 0x5A
        flash_mem[72]  = 8'h63; flash_mem[73]  = 8'h94; flash_mem[74]  = 8'h26; flash_mem[75]  = 8'h00; // bne  x13, x2, +8
        flash_mem[76]  = 8'h13; flash_mem[77]  = 8'h08; flash_mem[78]  = 8'h60; flash_mem[79]  = 8'h06; // addi x16, x0, 0x66 (skip)
        flash_mem[80]  = 8'h13; flash_mem[81]  = 8'h08; flash_mem[82]  = 8'h90; flash_mem[83]  = 8'h09; // addi x16, x0, 0x99
        flash_mem[84]  = 8'hef; flash_mem[85]  = 8'h08; flash_mem[86]  = 8'h80; flash_mem[87]  = 8'h00; // jal  x17, +8
        flash_mem[88]  = 8'h13; flash_mem[89]  = 8'h09; flash_mem[90]  = 8'h10; flash_mem[91]  = 8'h01; // addi x18, x0, 0x11 (skip)
        flash_mem[92]  = 8'h13; flash_mem[93]  = 8'h09; flash_mem[94]  = 8'h60; flash_mem[95]  = 8'h06; // addi x18, x0, 0x66
        flash_mem[96]  = 8'h93; flash_mem[97]  = 8'h09; flash_mem[98]  = 8'h00; flash_mem[99]  = 8'h07; // addi x19, x0, 0x70
        flash_mem[100] = 8'h67; flash_mem[101] = 8'h8a; flash_mem[102] = 8'h09; flash_mem[103] = 8'h00; // jalr x20, x19, 0
        flash_mem[104] = 8'h93; flash_mem[105] = 8'h0a; flash_mem[106] = 8'h30; flash_mem[107] = 8'h03; // addi x21, x0, 0x33 (skip)
        flash_mem[108] = 8'h6f; flash_mem[109] = 8'h00; flash_mem[110] = 8'h80; flash_mem[111] = 8'h00; // jal  x0, +8
        flash_mem[112] = 8'h93; flash_mem[113] = 8'h0a; flash_mem[114] = 8'h80; flash_mem[115] = 8'h08; // addi x21, x0, 0x88
        flash_mem[116] = 8'h13; flash_mem[117] = 8'h0b; flash_mem[118] = 8'h20; flash_mem[119] = 8'h01; // addi x22, x0, 0x12
        flash_mem[120] = 8'h93; flash_mem[121] = 8'h0b; flash_mem[122] = 8'h40; flash_mem[123] = 8'h03; // addi x23, x0, 0x34
        flash_mem[124] = 8'h13; flash_mem[125] = 8'h0c; flash_mem[126] = 8'h60; flash_mem[127] = 8'h05; // addi x24, x0, 0x56
        flash_mem[128] = 8'h93; flash_mem[129] = 8'h0c; flash_mem[130] = 8'h80; flash_mem[131] = 8'h07; // addi x25, x0, 0x78
        flash_mem[132] = 8'h13; flash_mem[133] = 8'h0d; flash_mem[134] = 8'ha0; flash_mem[135] = 8'h09; // addi x26, x0, 0x9A
        flash_mem[136] = 8'h93; flash_mem[137] = 8'h0d; flash_mem[138] = 8'h06; flash_mem[139] = 8'h40; // addi x27, x12, 0x400
        flash_mem[140] = 8'h13; flash_mem[141] = 8'h8e; flash_mem[142] = 8'h0d; flash_mem[143] = 8'h40; // addi x28, x27, 0x400
        flash_mem[144] = 8'h93; flash_mem[145] = 8'h0e; flash_mem[146] = 8'h0e; flash_mem[147] = 8'h40; // addi x29, x28, 0x400
        flash_mem[148] = 8'h13; flash_mem[149] = 8'h8f; flash_mem[150] = 8'h0e; flash_mem[151] = 8'h40; // addi x30, x29, 0x400
        flash_mem[152] = 8'h23; flash_mem[153] = 8'h20; flash_mem[154] = 8'h66; flash_mem[155] = 8'h01; // sw   x22, 0(x12)
        flash_mem[156] = 8'h23; flash_mem[157] = 8'h20; flash_mem[158] = 8'h66; flash_mem[159] = 8'h01; // sw   x22, 0(x12) hit
        flash_mem[160] = 8'h23; flash_mem[161] = 8'ha0; flash_mem[162] = 8'h7d; flash_mem[163] = 8'h01; // sw   x23, 0(x27)
        flash_mem[164] = 8'h23; flash_mem[165] = 8'ha0; flash_mem[166] = 8'h7d; flash_mem[167] = 8'h01; // sw   x23, 0(x27) hit
        flash_mem[168] = 8'h23; flash_mem[169] = 8'h20; flash_mem[170] = 8'h8e; flash_mem[171] = 8'h01; // sw   x24, 0(x28)
        flash_mem[172] = 8'h23; flash_mem[173] = 8'h20; flash_mem[174] = 8'h8e; flash_mem[175] = 8'h01; // sw   x24, 0(x28) hit
        flash_mem[176] = 8'h23; flash_mem[177] = 8'ha0; flash_mem[178] = 8'h9e; flash_mem[179] = 8'h01; // sw   x25, 0(x29)
        flash_mem[180] = 8'h23; flash_mem[181] = 8'ha0; flash_mem[182] = 8'h9e; flash_mem[183] = 8'h01; // sw   x25, 0(x29) hit
        flash_mem[184] = 8'h23; flash_mem[185] = 8'h20; flash_mem[186] = 8'haf; flash_mem[187] = 8'h01; // sw   x26, 0(x30) -> evict dirty
        flash_mem[188] = 8'h23; flash_mem[189] = 8'h20; flash_mem[190] = 8'haf; flash_mem[191] = 8'h01; // sw   x26, 0(x30) hit
        flash_mem[192] = 8'h93; flash_mem[193] = 8'h0f; flash_mem[194] = 8'hf0; flash_mem[195] = 8'h0f; // addi x31, x0, 0xFF
        flash_mem[196] = 8'h6f; flash_mem[197] = 8'h00; flash_mem[198] = 8'h00; flash_mem[199] = 8'h00; // jal  x0, 0

        // Fill remaining space with zeros
        for (i = 200; i < 4096; i = i + 1) begin
            flash_mem[i] = 8'h00;
        end
    end

    // Flash read logic
    always @(*) begin
        if (digital_flash_read_en && digital_flash_addr < 4096) begin
            digital_flash_data = flash_mem[digital_flash_addr];
            digital_flash_ready = 1'b1;
        end
        else begin
            digital_flash_data = 8'h00;
            digital_flash_ready = 1'b0;
        end
    end
    // RAM model
    reg [31:0] ram_mem [0:1023];

    initial begin
        for (i = 0; i < 1024; i = i + 1) begin
            ram_mem[i] = 32'h0;
        end
    end

    // RAM闂佽崵濮村ú鈺咁敋瑜斿畷顖炲箻缂佹鍔甸梺鍝勫缁绘帞鏁?
    always @(posedge clk) begin
        if (rst_n) begin
            if (digital_mem_write_en) begin
                case (digital_mem_byte_size)
                    4'b0001: ram_mem[digital_mem_addr[11:2]][7:0] <= digital_mem_wdata[7:0];
                    4'b0011: ram_mem[digital_mem_addr[11:2]][15:0] <= digital_mem_wdata[15:0];
                    4'b1111: ram_mem[digital_mem_addr[11:2]] <= digital_mem_wdata;
                    default: ram_mem[digital_mem_addr[11:2]] <= digital_mem_wdata;
                endcase
                $display("Time=%0t: RAM WRITE - addr=0x%h, data=0x%h, size=%b",
                         $time, digital_mem_addr, digital_mem_wdata, digital_mem_byte_size);
            end
        end
    end

    always @(*) begin
        if (digital_mem_read_en && digital_mem_addr[31:12] == 20'h10000) begin
            digital_mem_data = ram_mem[digital_mem_addr[11:2]];
            digital_mem_ready = 1'b1;
        end
        else begin
            digital_mem_data = 32'h0;
            digital_mem_ready = 1'b1;
        end
    end

    // GPIO simulation - keep all pins high-Z so SoC can drive outputs.
    assign gpio_values = {`GPIO_NUMS{1'bz}};

    // Placeholder GPIO monitor hook.
    always @(posedge clk) begin
        if (rst_n) begin
            // no-op
        end
    end

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

    // Reset and test control
    initial begin
        bus_write_cycles = 0;
        saw_external_write = 1'b0;
        rst_n = 0;
        #20 rst_n = 1;

        // Run long enough to finish and observe write-back traffic.
        #15000;

        $display("\n========================================");
        $display("ISA + Dirty-Line Write-Back Test Completed");
        $display("========================================");
        $display("External RAM write-back observation:");
        $display("  saw_external_write = %0d (Expected: 1)", saw_external_write);
        $display("  bus_write_cycles   = %0d (Expected: > 0)", bus_write_cycles);
        $display("");
        $display("Register values:");
        $display("  x1  = 0x%h (Expected: 5)", dbg_x1);
        $display("  x2  = 0x%h (Expected: 13)", dbg_x2);
        $display("  x3  = 0x%h (Expected: 4)", dbg_x3);
        $display("  x4  = 0x%h (Expected: 9)", dbg_x4);
        $display("  x5  = 0x%h (Expected: 1)", dbg_x5);
        $display("  x6  = 0x%h (Expected: 0)", dbg_x6);
        $display("  x7  = 0x%h (Expected: 13)", dbg_x7);
        $display("  x8  = 0x%h (Expected: 8)", dbg_x8);
        $display("  x9  = 0x%h (Expected: 4)", dbg_x9);
        $display("  x10 = 0x%h (Expected: 0x0000001c)", dbg_x10);
        $display("  x11 = 0x%h (Expected: 0x00000096)", dbg_x11);
        $display("  x12 = 0x%h (Expected: 0x10000000)", dbg_x12);
        $display("  x13 = 0x%h (Expected: 0x00000096)", dbg_x13);
        $display("  x14 = 0x%h (Expected: 0x00000002)", dbg_x14);
        $display("  x15 = 0x%h (Expected: 0x0000005a)", dbg_x15);
        $display("  x16 = 0x%h (Expected: 0x00000099)", dbg_x16);
        $display("  x17 = 0x%h (Expected: 0x00000058)", dbg_x17);
        $display("  x18 = 0x%h (Expected: 0x00000066)", dbg_x18);
        $display("  x19 = 0x%h (Expected: 0x00000070)", dbg_x19);
        $display("  x20 = 0x%h (Expected: 0x00000068)", dbg_x20);
        $display("  x21 = 0x%h (Expected: 0x00000088)", dbg_x21);
        $display("  x22 = 0x%h (Expected: 0x00000012)", dbg_x22);
        $display("  x23 = 0x%h (Expected: 0x00000034)", dbg_x23);
        $display("  x24 = 0x%h (Expected: 0x00000056)", dbg_x24);
        $display("  x25 = 0x%h (Expected: 0x00000078)", dbg_x25);
        $display("  x26 = 0x%h (Expected: 0x0000009a)", dbg_x26);
        $display("  x27 = 0x%h (Expected: 0x10000400)", dbg_x27);
        $display("  x28 = 0x%h (Expected: 0x10000800)", dbg_x28);
        $display("  x29 = 0x%h (Expected: 0x10000c00)", dbg_x29);
        $display("  x30 = 0x%h (Expected: 0x10001000)", dbg_x30);
        $display("  x31 = 0x%h (Done flag, Expected: 0xFF)", dbg_x31);
        $display("========================================\n");
        $display("Full register dump:");
        for (reg_idx = 0; reg_idx < 32; reg_idx = reg_idx + 1) begin
            $display("  x%0d = 0x%h", reg_idx, soc.cpu.cpu_pipeline.registers.reg_file[reg_idx]);
        end
        $display("========================================\n");

        // Verify ISA operations and write-back behavior.
        if (saw_external_write &&
            bus_write_cycles > 0 &&
            dbg_x1  == 32'h00000005 &&
            dbg_x2  == 32'h0000000d &&
            dbg_x3  == 32'h00000004 &&
            dbg_x4  == 32'h00000009 &&
            dbg_x5  == 32'h00000001 &&
            dbg_x6  == 32'h00000000 &&
            dbg_x7  == 32'h0000000d &&
            dbg_x8  == 32'h00000008 &&
            dbg_x9  == 32'h00000004 &&
            dbg_x10 == 32'h0000001c &&
            dbg_x11 == 32'h00000096 &&
            dbg_x12 == 32'h10000000 &&
            dbg_x13 == 32'h00000096 &&
            dbg_x14 == 32'h00000002 &&
            dbg_x15 == 32'h0000005a &&
            dbg_x16 == 32'h00000099 &&
            dbg_x17 == 32'h00000058 &&
            dbg_x18 == 32'h00000066 &&
            dbg_x19 == 32'h00000070 &&
            dbg_x20 == 32'h00000068 &&
            dbg_x21 == 32'h00000088 &&
            dbg_x22 == 32'h00000012 &&
            dbg_x23 == 32'h00000034 &&
            dbg_x24 == 32'h00000056 &&
            dbg_x25 == 32'h00000078 &&
            dbg_x26 == 32'h0000009a &&
            dbg_x27 == 32'h10000400 &&
            dbg_x28 == 32'h10000800 &&
            dbg_x29 == 32'h10000c00 &&
            dbg_x30 == 32'h10001000 &&
            dbg_x31 == 32'h000000ff) begin
            $display("PASS: ISA + dirty-line write-back test passed!");
        end else begin
            $display("FAIL: ISA + dirty-line write-back test failed!");
        end

        $finish;
    end

    // Monitor bus activity
    always @(posedge clk) begin
        if (rst_n) begin
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
                         $time,
                         soc.cpu.cpu_pipeline.wb_rd,
                         soc.cpu.cpu_pipeline.wb_rd_data);
            end

            if (digital_mem_read_en) begin
                $display("Time=%0t: BUS READ - addr=0x%h", $time, digital_mem_addr);
            end
            if (digital_mem_write_en) begin
                bus_write_cycles = bus_write_cycles + 1;
                saw_external_write = 1'b1;
                $display("Time=%0t: BUS WRITE - addr=0x%h, data=0x%h", $time, digital_mem_addr, digital_mem_wdata);
            end
            if (digital_flash_read_en) begin
                $display("Time=%0t: FLASH READ - addr=0x%h, data=0x%h",
                         $time, digital_flash_addr, digital_flash_data);
            end

            // Monitor store execution path details.
            if (soc.cpu.cpu_pipeline.ex_mem.inst_sw && soc.cpu.cpu_pipeline.ex_mem.state == 2'b00) begin
                $display("Time=%0t: SW INSTRUCTION - rs1_data=0x%h, rs2_data=0x%h, rd=0x%h, imm_2031=0x%h, calculated_addr=0x%h",
                         $time,
                         soc.cpu.cpu_pipeline.ex_mem.rs1_data,
                         soc.cpu.cpu_pipeline.ex_mem.rs2_data,
                         soc.cpu.cpu_pipeline.ex_mem.rd,
                         soc.cpu.cpu_pipeline.ex_mem.imm_2031,
                         soc.cpu.cpu_pipeline.ex_mem.rs1_data + {{20{soc.cpu.cpu_pipeline.ex_mem.imm_2031[11]}},soc.cpu.cpu_pipeline.ex_mem.imm_2031[11:5],soc.cpu.cpu_pipeline.ex_mem.rd});
                $display("         x10=0x%h, x11=0x%h",
                         dbg_x10,
                         dbg_x11);
            end
        end
    end

endmodule
