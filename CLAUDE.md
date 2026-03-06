# Claude Code 项目配置文件

## 项目概述

**项目名称**: CPU五级流水线设计
**项目类型**: RISC-V 教学处理器
**技术栈**: SystemVerilog (目标)，Verilog (原始)
**用途**: 个人学习改编，参加比赛

## 项目目标

- 将整个项目从 Verilog 转换为 SystemVerilog
- 多阶段开发：先跑通该项目再实现多周期CPU的五级流水线
- 使用 VCS 和 Verdi 进行验证

## 开发环境

### 工作模式
- **代码编辑**: Windows 11 Home
- **编译/仿真/调试**: CentOS 7 虚拟机

### 文件传输注意事项
Windows → Linux 传输文件后需要转换行尾格式：
```bash
dos2unix filename.sh
dos2unix Makefile
```

## EDA 工具配置

### VCS (Synopsys Verilog Compiler Simulator)
- **版本**: O-2018.09-SP2
- **安装路径**: `/home/synopsys/vcs/O-2018.09-SP2`
- **用途**: SystemVerilog 编译和仿真

### Verdi
- **版本**: Verdi_O-2018.09-SP2
- **安装路径**: `/home/synopsys/verdi/Verdi_O-2018.09-SP2`
- **用途**: 波形查看和调试

### 环境配置
每次登录 CentOS 7 虚拟机后需要执行：
```bash
lmg_synopsys
source setup_env.sh
```

## 代码组织规范

## VCS 编译配置要点

### 关键编译选项
- `-sverilog`: 启用 SystemVerilog 支持
- `-debug_access+all -kdb`: 生成 Verdi 调试信息
- `+incdir+rtl`: 指定 include 文件搜索路径
- `-timescale=1ns/1ps`: 设置时间单位

## 用户偏好

### 交流方式
- **语言**: 中文
- **代码注释**: 中英文混合
- **响应风格**: 简洁直接，提供可执行命令，避免冗长解释

### 工作习惯
- Windows 上编辑代码
- CentOS 7 虚拟机上运行编译、仿真、调试
- 使用 Makefile 自动化工作流
- 优先使用命令行工具

### 工作流程规范

#### 修改前计划
- 每次执行修改或创建文件之前，必须：
  1. 进入计划模式（Plan Mode）
  2. 提供完整详细的修改计划
  3. 等待用户审阅和确认
  4. 获得批准后才能执行修改
- 计划内容应包括：
  - 修改原因和目标
  - 具体修改的文件和位置
  - 修改前后的代码对比
  - 预期效果和验证方法

#### 上下文管理
- 当上下文使用率超过 90% 时：
  1. 自动执行 compact 操作
  2. 保存以下关键信息：
     - 当前任务的目标和进度
     - 已解决的问题和解决方案
     - 未完成的任务列表
     - 重要的配置和路径信息
     - 用户的特殊要求和偏好
  3. 在 compact 后向用户说明已保存的信息

---

