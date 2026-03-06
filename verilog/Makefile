# Makefile for CPU-V RISC-V Processor Simulation with VCS and Verdi
# Project: CPU五级流水线设计
# Target: CentOS 7 虚拟机环境

# ============================================================================
# Tool Path Configuration (for CentOS 7)
# ============================================================================
# 根据 CLAUDE.md 中的配置
VCS_HOME    = /home/synopsys/vcs/O-2018.09-SP2
VERDI_HOME  = /home/synopsys/verdi/Verdi_O-2018.09-SP2

# 工具可执行文件路径
VCS         = $(VCS_HOME)/bin/vcs
VERDI       = $(VERDI_HOME)/bin/verdi

# ============================================================================
# Directory Configuration
# ============================================================================
CORE_DIR    = core
PERIPH_DIR  = peripherals
COMMON_DIR  = common
SOC_DIR     = soc
TB_DIR      = testbench
BUILD_DIR   = /tmp/cpu_v_build_$(USER)
LOG_DIR     = vlogs

# ============================================================================
# VCS Compilation Flags
# ============================================================================
VCS_FLAGS   = -full64 \
              -timescale=1ns/1ps \
              -debug_access+all \
              -kdb \
              -lca \
              -LDFLAGS -Wl,--no-as-needed \
              +v2k \
              -Mdir=$(BUILD_DIR)/csrc \
              +incdir+$(CORE_DIR) \
              +incdir+$(PERIPH_DIR) \
              +incdir+$(COMMON_DIR) \
              +incdir+$(SOC_DIR) \
              -l $(LOG_DIR)/compile.log

# ============================================================================
# Simulation Flags
# ============================================================================
SIM_FLAGS   = -l $(LOG_DIR)/sim.log \
              +vcs+flush+all

# ============================================================================
# Verdi Configuration
# ============================================================================
VERDI_FLAGS = -ssf $(BUILD_DIR)/novas.fsdb \
              -dbdir $(BUILD_DIR)/simv.daidir \
              -logfile $(LOG_DIR)/verdi.log

# ============================================================================
# Source Files - Core CPU Modules
# ============================================================================
CORE_FILES  = $(CORE_DIR)/config.v \
              $(CORE_DIR)/registers.v \
              $(CORE_DIR)/registers_csr.v \
              $(CORE_DIR)/inst_fetch.v \
              $(CORE_DIR)/inst_decoder.v \
              $(CORE_DIR)/ex_alu.v \
              $(CORE_DIR)/ex_branch.v \
              $(CORE_DIR)/ex_csr.v \
              $(CORE_DIR)/ex_mem.v \
              $(CORE_DIR)/mem_controller.v \
              $(CORE_DIR)/cache.v \
              $(CORE_DIR)/sys_bus.v \
              $(CORE_DIR)/cpu_pipeline.v \
              $(CORE_DIR)/cpu_top.v

# ============================================================================
# Source Files - Peripherals
# ============================================================================
PERIPH_FILES = $(PERIPH_DIR)/digital/digital_ram.v \
               $(PERIPH_DIR)/digital/digital_flash.v \
               $(PERIPH_DIR)/uart/uart_clk_div.v \
               $(PERIPH_DIR)/uart/uart_rx.v \
               $(PERIPH_DIR)/uart/uart_tx.v \
               $(PERIPH_DIR)/uart/uart_top.v \
               $(PERIPH_DIR)/spi/spi_master.v \
               $(PERIPH_DIR)/iic/iic_scl.v \
               $(PERIPH_DIR)/iic/iic_master.v \
               $(PERIPH_DIR)/iic/iic_slave.v \
               $(PERIPH_DIR)/iic/iic_top.v \
               $(PERIPH_DIR)/gpio_controller.v \
               $(PERIPH_DIR)/hl_adapter.v \
               $(PERIPH_DIR)/peripherals_bus.v

# ============================================================================
# Source Files - Common Modules
# ============================================================================
COMMON_FILES = $(COMMON_DIR)/fifo_async.v

# ============================================================================
# Source Files - SoC Level
# ============================================================================
SOC_FILES   = $(SOC_DIR)/digital_soc.v \
              $(SOC_DIR)/vboard_soc.v

# ============================================================================
# Testbench Files
# ============================================================================
TB_CPU      = $(TB_DIR)/cpu_tb.v
TB_SOC      = $(TB_DIR)/digital_soc_tb.v
TB_PIPELINE = $(TB_DIR)/cpu_pipeline_simple_tb.v
TB_PIPELINE_FULL = $(TB_DIR)/cpu_pipeline_full_tb.v
TB_SOC_BUS  = $(TB_DIR)/soc_peripheral_bus_tb.v

# ============================================================================
# Simulation Executable
# ============================================================================
SIMV        = $(BUILD_DIR)/simv

# ============================================================================
# Targets
# ============================================================================
.PHONY: all clean compile_cpu compile_soc compile_pipeline compile_pipeline_full compile_soc_bus sim_cpu sim_soc sim_pipeline sim_pipeline_full sim_soc_bus \
        run_cpu run_soc run_pipeline run_pipeline_full run_soc_bus verdi_cpu verdi_soc verdi_pipeline verdi_pipeline_full verdi_soc_bus gui help dirs check_tools

# Default target - 完整 SoC 仿真流程
all: clean compile_soc sim_soc verdi_soc

# ============================================================================
# Tool Check
# ============================================================================
check_tools:
	@echo "=========================================="
	@echo "Checking tool availability..."
	@echo "=========================================="
	@which $(VCS) > /dev/null 2>&1 || (echo "ERROR: VCS not found at $(VCS)" && exit 1)
	@which $(VERDI) > /dev/null 2>&1 || (echo "WARNING: Verdi not found at $(VERDI)")
	@echo "VCS found: $(VCS)"
	@echo "Verdi found: $(VERDI)"
	@echo "Tools check passed!"
	@echo "=========================================="

# ============================================================================
# Create Directories
# ============================================================================
dirs:
	@mkdir -p $(BUILD_DIR) $(LOG_DIR)
	@echo "Created build directories: $(BUILD_DIR), $(LOG_DIR)"

# ============================================================================
# Compile CPU Core Only
# ============================================================================
compile_cpu: dirs check_tools
	@echo "=========================================="
	@echo "Compiling CPU Core with VCS..."
	@echo "=========================================="
	$(VCS) $(VCS_FLAGS) \
		$(CORE_FILES) \
		$(TB_CPU) \
		-o $(SIMV)
	@echo "CPU compilation complete! Executable: $(SIMV)"

# ============================================================================
# Compile Complete SoC
# ============================================================================
compile_soc: dirs check_tools
	@echo "=========================================="
	@echo "Compiling Complete SoC with VCS..."
	@echo "=========================================="
	$(VCS) $(VCS_FLAGS) \
		$(CORE_FILES) \
		$(COMMON_FILES) \
		$(PERIPH_FILES) \
		$(SOC_FILES) \
		$(TB_SOC) \
		-o $(SIMV)
	@echo "SoC compilation complete! Executable: $(SIMV)"

# ============================================================================
# Compile Pipeline Only (Simplified Test)
# ============================================================================
compile_pipeline: dirs check_tools
	@echo "=========================================="
	@echo "Compiling CPU Pipeline (Simplified) with VCS..."
	@echo "=========================================="
	$(VCS) $(VCS_FLAGS) \
		$(CORE_DIR)/config.v \
		$(CORE_DIR)/registers.v \
		$(CORE_DIR)/inst_fetch.v \
		$(CORE_DIR)/inst_decoder.v \
		$(CORE_DIR)/ex_alu.v \
		$(CORE_DIR)/ex_branch.v \
		$(CORE_DIR)/ex_csr.v \
		$(CORE_DIR)/ex_mem.v \
		$(CORE_DIR)/cpu_pipeline.v \
		$(TB_PIPELINE) \
		-o $(SIMV)
	@echo "Pipeline compilation complete! Executable: $(SIMV)"

# ============================================================================
# Compile CPU Pipeline Full Test (14 Instructions)
# ============================================================================
compile_pipeline_full: dirs check_tools
	@echo "=========================================="
	@echo "Compiling CPU Pipeline Full Test with VCS..."
	@echo "=========================================="
	$(VCS) $(VCS_FLAGS) \
		$(CORE_DIR)/config.v \
		$(CORE_DIR)/registers.v \
		$(CORE_DIR)/inst_fetch.v \
		$(CORE_DIR)/inst_decoder.v \
		$(CORE_DIR)/ex_alu.v \
		$(CORE_DIR)/ex_branch.v \
		$(CORE_DIR)/ex_csr.v \
		$(CORE_DIR)/ex_mem.v \
		$(CORE_DIR)/cpu_pipeline.v \
		$(TB_PIPELINE_FULL) \
		-o $(SIMV)
	@echo "Pipeline Full Test compilation complete! Executable: $(SIMV)"

# ============================================================================
# Compile SoC Peripheral Bus Test
# ============================================================================
compile_soc_bus: dirs check_tools
	@echo "=========================================="
	@echo "Compiling SoC Peripheral Bus Test with VCS..."
	@echo "=========================================="
	$(VCS) $(VCS_FLAGS) \
		$(CORE_FILES) \
		$(PERIPH_FILES) \
		$(COMMON_FILES) \
		$(SOC_FILES) \
		$(TB_SOC_BUS) \
		-o $(SIMV)
	@echo "SoC Peripheral Bus Test compilation complete! Executable: $(SIMV)"

# ============================================================================
# Run CPU Simulation
# ============================================================================
sim_cpu: compile_cpu
	@echo "=========================================="
	@echo "Running CPU simulation..."
	@echo "=========================================="
	$(BUILD_DIR)/simv -l $(LOG_DIR)/sim.log +vcs+flush+all
	@echo "CPU simulation complete! Check $(LOG_DIR)/sim.log"

# ============================================================================
# Run SoC Simulation
# ============================================================================
sim_soc: compile_soc
	@echo "=========================================="
	@echo "Running SoC simulation..."
	@echo "=========================================="
	$(BUILD_DIR)/simv -l $(LOG_DIR)/sim.log +vcs+flush+all
	@echo "SoC simulation complete! Check $(LOG_DIR)/sim.log"

# ============================================================================
# Run Pipeline Simulation
# ============================================================================
sim_pipeline: compile_pipeline
	@echo "=========================================="
	@echo "Running Pipeline simulation..."
	@echo "=========================================="
	$(BUILD_DIR)/simv -l $(LOG_DIR)/sim_pipeline.log +vcs+flush+all
	@echo "Pipeline simulation complete! Check $(LOG_DIR)/sim_pipeline.log"

# ============================================================================
# Run Pipeline Full Test Simulation (14 Instructions)
# ============================================================================
sim_pipeline_full: compile_pipeline_full
	@echo "=========================================="
	@echo "Running Pipeline Full Test simulation..."
	@echo "=========================================="
	$(BUILD_DIR)/simv -l $(LOG_DIR)/sim_pipeline_full.log +vcs+flush+all
	@echo "Pipeline Full Test simulation complete! Check $(LOG_DIR)/sim_pipeline_full.log"

# ============================================================================
# Run SoC Peripheral Bus Test Simulation
# ============================================================================
sim_soc_bus: compile_soc_bus
	@echo "=========================================="
	@echo "Running SoC Peripheral Bus Test simulation..."
	@echo "=========================================="
	$(BUILD_DIR)/simv -l $(LOG_DIR)/sim_soc_bus.log +vcs+flush+all
	@echo "SoC Peripheral Bus Test simulation complete! Check $(LOG_DIR)/sim_soc_bus.log"

# ============================================================================
# Complete CPU Flow (compile + simulate + verdi)
# ============================================================================
run_cpu: clean compile_cpu sim_cpu verdi_cpu

# ============================================================================
# Complete SoC Flow (compile + simulate + verdi)
# ============================================================================
run_soc: clean compile_soc sim_soc verdi_soc

# ============================================================================
# Complete Pipeline Flow (compile + simulate + verdi)
# ============================================================================
run_pipeline: clean compile_pipeline sim_pipeline verdi_pipeline

# ============================================================================
# Complete Pipeline Full Test Flow (compile + simulate + verdi)
# ============================================================================
run_pipeline_full: clean compile_pipeline_full sim_pipeline_full verdi_pipeline_full

# ============================================================================
# Complete SoC Peripheral Bus Test Flow (compile + simulate + verdi)
# ============================================================================
run_soc_bus: clean compile_soc_bus sim_soc_bus verdi_soc_bus

# ============================================================================
# Open Verdi for CPU Waveform
# ============================================================================
verdi_cpu: compile_cpu
	@echo "==========================================" > $(LOG_DIR)/verdi_launch.log
	@echo "Opening Verdi for CPU waveform viewing..." | tee -a $(LOG_DIR)/verdi_launch.log
	@echo "==========================================" | tee -a $(LOG_DIR)/verdi_launch.log
	@echo "Command: $(VERDI) $(VERDI_FLAGS) $(CORE_FILES) $(TB_CPU)" | tee -a $(LOG_DIR)/verdi_launch.log
	$(VERDI) $(VERDI_FLAGS) \
		$(CORE_FILES) \
		$(TB_CPU) >> $(LOG_DIR)/verdi.log 2>&1 &
	@echo "Verdi launched! Check $(LOG_DIR)/verdi.log for details" | tee -a $(LOG_DIR)/verdi_launch.log

# ============================================================================
# Open Verdi for Pipeline Waveform
# ============================================================================
verdi_pipeline: compile_pipeline
	@echo "=========================================="
	@echo "Opening Verdi for Pipeline waveform viewing..."
	@echo "=========================================="
	$(VERDI) -ssf $(BUILD_DIR)/pipeline_simple.fsdb \
		-dbdir $(BUILD_DIR)/simv.daidir \
		$(CORE_DIR)/config.v \
		$(CORE_DIR)/registers.v \
		$(CORE_DIR)/inst_fetch.v \
		$(CORE_DIR)/inst_decoder.v \
		$(CORE_DIR)/ex_alu.v \
		$(CORE_DIR)/ex_branch.v \
		$(CORE_DIR)/ex_csr.v \
		$(CORE_DIR)/ex_mem.v \
		$(CORE_DIR)/cpu_pipeline.v \
		$(TB_PIPELINE) >> $(LOG_DIR)/verdi_pipeline.log 2>&1 &
	@echo "Verdi launched! Check $(LOG_DIR)/verdi_pipeline.log for details"

# ============================================================================
# Open Verdi for Pipeline Full Test Waveform
# ============================================================================
verdi_pipeline_full: compile_pipeline_full
	@echo "=========================================="
	@echo "Opening Verdi for Pipeline Full Test waveform viewing..."
	@echo "=========================================="
	$(VERDI) -ssf $(BUILD_DIR)/pipeline_full.fsdb \
		-dbdir $(BUILD_DIR)/simv.daidir \
		$(CORE_DIR)/config.v \
		$(CORE_DIR)/registers.v \
		$(CORE_DIR)/inst_fetch.v \
		$(CORE_DIR)/inst_decoder.v \
		$(CORE_DIR)/ex_alu.v \
		$(CORE_DIR)/ex_branch.v \
		$(CORE_DIR)/ex_csr.v \
		$(CORE_DIR)/ex_mem.v \
		$(CORE_DIR)/cpu_pipeline.v \
		$(TB_PIPELINE_FULL) >> $(LOG_DIR)/verdi_pipeline_full.log 2>&1 &
	@echo "Verdi launched! Check $(LOG_DIR)/verdi_pipeline_full.log for details"

# ============================================================================
# Open Verdi for SoC Waveform
# ============================================================================
verdi_soc: compile_soc
	@echo "=========================================="
	@echo "Opening Verdi for SoC waveform viewing..."
	@echo "=========================================="
	$(VERDI) $(VERDI_FLAGS) \
		$(CORE_FILES) \
		$(COMMON_FILES) \
		$(PERIPH_FILES) \
		$(SOC_FILES) \
		$(TB_SOC) > $(LOG_DIR)/verdi.log 2>&1 &
	@echo "Verdi launched! Check $(LOG_DIR)/verdi.log for details"

# ============================================================================
# Open Verdi for SoC Peripheral Bus Test Waveform
# ============================================================================
verdi_soc_bus: compile_soc_bus
	@echo "=========================================="
	@echo "Opening Verdi for SoC Peripheral Bus Test waveform viewing..."
	@echo "=========================================="
	$(VERDI) -ssf $(BUILD_DIR)/soc_peripheral_bus.fsdb \
		-dbdir $(BUILD_DIR)/simv.daidir \
		$(CORE_FILES) \
		$(COMMON_FILES) \
		$(PERIPH_FILES) \
		$(SOC_FILES) \
		$(TB_SOC_BUS) >> $(LOG_DIR)/verdi_soc_bus.log 2>&1 &
	@echo "Verdi launched! Check $(LOG_DIR)/verdi_soc_bus.log for details"

# ============================================================================
# Run Simulation with DVE GUI
# ============================================================================
gui: compile_soc
	@echo "=========================================="
	@echo "Running simulation with DVE GUI..."
	@echo "=========================================="
	cd $(BUILD_DIR) && ./simv -gui &
	@echo "DVE GUI launched!"

# ============================================================================
# Clean Build Artifacts
# ============================================================================
clean:
	@echo "=========================================="
	@echo "Cleaning build artifacts..."
	@echo "=========================================="
	rm -rf $(BUILD_DIR) $(LOG_DIR)/*
	rm -rf csrc simv* *.daidir *.log DVEfiles
	rm -rf verdiLog novas* *.fsdb *.vpd
	rm -rf ucli.key vc_hdrs.h .vlogansetup.* *.conf
	@echo "Clean complete!"

# ============================================================================
# Help Information
# ============================================================================
help:
	@echo "=========================================="
	@echo "CPU-V RISC-V Processor Makefile"
	@echo "=========================================="
	@echo "Available targets:"
	@echo ""
	@echo "  make check_tools       - Check if VCS and Verdi are available"
	@echo "  make compile_cpu       - Compile CPU core only"
	@echo "  make compile_soc       - Compile complete SoC"
	@echo "  make compile_pipeline  - Compile CPU pipeline only (simplified)"
	@echo "  make compile_pipeline_full - Compile CPU pipeline full test (14 instructions)"
	@echo "  make compile_soc_bus   - Compile SoC peripheral bus test"
	@echo "  make sim_cpu           - Run CPU simulation"
	@echo "  make sim_soc           - Run SoC simulation"
	@echo "  make sim_pipeline      - Run Pipeline simulation (simplified)"
	@echo "  make sim_pipeline_full - Run Pipeline full test simulation (14 instructions)"
	@echo "  make sim_soc_bus       - Run SoC peripheral bus test simulation"
	@echo "  make run_cpu           - Complete CPU flow (clean + compile + sim + verdi)"
	@echo "  make run_soc           - Complete SoC flow (clean + compile + sim + verdi)"
	@echo "  make run_pipeline      - Complete Pipeline flow (clean + compile + sim + verdi)"
	@echo "  make run_pipeline_full - Complete Pipeline full test flow (14 instructions)"
	@echo "  make run_soc_bus       - Complete SoC peripheral bus test flow"
	@echo "  make verdi_cpu         - Open Verdi for CPU waveform"
	@echo "  make verdi_soc         - Open Verdi for SoC waveform"
	@echo "  make verdi_pipeline    - Open Verdi for Pipeline waveform"
	@echo "  make verdi_pipeline_full - Open Verdi for Pipeline full test waveform"
	@echo "  make verdi_soc_bus     - Open Verdi for SoC peripheral bus test waveform"
	@echo "  make gui               - Run simulation with DVE GUI"
	@echo "  make clean             - Clean all build artifacts"
	@echo "  make help              - Show this help message"
	@echo ""
	@echo "Tool Configuration:"
	@echo "  VCS_HOME    = $(VCS_HOME)"
	@echo "  VERDI_HOME  = $(VERDI_HOME)"
	@echo ""
	@echo "Usage Example:"
	@echo "  1. 在 CentOS 7 虚拟机中执行: lmg_synopsys && source setup_env.sh"
	@echo "  2. 运行完整 SoC 仿真: make run_soc"
	@echo "  3. 仅运行 CPU 核心仿真: make run_cpu"
	@echo "  4. 运行简化的流水线测试: make run_pipeline"
	@echo "  5. 运行完整的流水线测试(14条指令): make run_pipeline_full"
	@echo "  6. 运行SoC外设总线测试: make run_soc_bus"
	@echo "=========================================="
