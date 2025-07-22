# 📄 多版本简历系统

专业的 Typst 简历模板系统，针对不同行业和岗位定制化设计。

## 🎯 简历版本

### 🔗 Web3版本 (`resume_web3.typ`)
**适用场景**: 区块链公司、DeFi项目、NFT平台、Web3创业公司
**突出技能**: 
- Solidity智能合约开发
- DApp前端集成 (React + Ethers.js)
- 区块链底层技术 (Rust实现)
- 零知识证明 (zkTLS)
- 密码学和共识算法

### ⚡ 硬件版本 (`resume_hardware.typ`)
**适用场景**: 硬件公司、嵌入式开发、物联网、机器人公司
**突出技能**:
- STM32/Arduino嵌入式开发
- PCB设计和电路分析
- PID控制和电机驱动
- 通信协议 (UART/SPI/I2C)
- 传感器集成和数据采集

### 💻 Web2版本 (`resume_web2.typ`)
**适用场景**: 互联网公司、软件公司、前端开发、RPA平台
**突出技能**:
- Vue.js/React前端开发
- RPA流程自动化
- 全栈开发能力
- 用户体验和产品思维
- 数据分析和可视化

## 🚀 使用方法

### 快速编译单个版本
```bash
./compile_resume.sh web3        # 编译Web3版本
./compile_resume.sh hardware    # 编译硬件版本  
./compile_resume.sh web2        # 编译Web2版本
```

### 编译所有版本
```bash
./compile_resume.sh all
```

### 查看可用版本
```bash
./compile_resume.sh --list
```

### 获取帮助
```bash
./compile_resume.sh --help
```

## 📁 文件结构

```
/workspaces/own/
├── resume_web3.typ          # Web3简历模板
├── resume_hardware.typ      # 硬件简历模板  
├── resume_web2.typ          # Web2简历模板
├── resume.typ              # 通用简历模板
├── compile_resume.sh       # 多版本编译脚本
├── backups/               # 自动备份目录
│   ├── web3_backup_*.pdf
│   ├── hardware_backup_*.pdf
│   └── web2_backup_*.pdf
├── resume_web3.pdf        # 生成的Web3简历
├── resume_hardware.pdf    # 生成的硬件简历
└── resume_web2.pdf        # 生成的Web2简历
```

## 🎨 设计特色

### 视觉区分
- **Web3版本**: 绿色主题 🟢 - 代表创新和去中心化
- **硬件版本**: 红色主题 🔴 - 代表硬件和工程
- **Web2版本**: 蓝色主题 🔵 - 代表传统互联网

### 内容定制
每个版本都经过精心设计，突出相关领域的：
- 核心技能标签
- 相关项目经历
- 行业关键词
- 专业技术栈

## 💡 使用建议

### Web3公司投递
- 使用 `resume_web3.pdf`
- 强调区块链项目经验
- 突出密码学和算法基础

### 硬件公司投递  
- 使用 `resume_hardware.pdf`
- 强调嵌入式开发经验
- 突出控制理论和电路设计

### Web2公司投递
- 使用 `resume_web2.pdf` 
- 强调前端开发和RPA经验
- 突出用户体验和产品思维

## 🔧 定制修改

1. **编辑个人信息**: 修改各版本文件中的姓名、联系方式
2. **调整项目经历**: 根据目标岗位调整项目描述重点
3. **更新技能标签**: 添加或删除相关技术标签
4. **重新编译**: 使用编译脚本生成新的PDF

## ⚙️ 脚本功能

- ✅ 多版本管理
- ✅ 自动备份
- ✅ 彩色输出
- ✅ 错误处理
- ✅ 批量编译
- ✅ 文件检查

完美解决了"一份简历打天下"的问题，让您的简历更精准匹配目标岗位！