# 📄 简历编译工具

这个项目包含了一个专业的 Typst 简历模板和自动化编译工具。

## 📁 文件说明

- `resume.typ` - Typst 简历模板源文件
- `resume.pdf` - 编译生成的 PDF 简历
- `compile_resume.sh` - 自动化编译脚本
- `backups/` - PDF 备份文件夹

## 🚀 快速开始

### 1. 自动化编译（推荐）
```bash
./compile_resume.sh
```

### 2. 手动编译
```bash
typst compile resume.typ resume.pdf
```

## 🛠️ 编译脚本功能

- ✅ 自动检查并安装 Typst 编译器
- ✅ 备份现有 PDF 文件
- ✅ 编译生成新的 PDF
- ✅ 显示文件大小和基本信息
- ✅ 错误处理和友好提示

## 📝 编辑简历

1. 编辑 `resume.typ` 文件，修改个人信息和内容
2. 运行 `./compile_resume.sh` 重新编译
3. 查看生成的 `resume.pdf`

## 🎯 简历特点

- 现代化设计，蓝色主题
- 清晰的版块分区
- 技能标签可视化
- 项目经历详细描述
- 获奖经历突出展示

## 💡 使用提示

- 修改个人信息：编辑第52行的姓名和58-60行的联系方式
- 调整内容：各个版块都有清晰的注释标识
- 查看PDF：使用 `xdg-open resume.pdf` 或任何PDF阅读器