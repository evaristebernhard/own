#!/bin/bash

# 多版本简历自动化编译脚本
# 支持编译不同领域的定制化简历

set -e

# 配置变量
BACKUP_DIR="backups"
DATE=$(date +"%Y%m%d_%H%M%S")

# 简历版本配置
declare -A RESUME_CONFIGS=(
    ["web3"]="resume_web3.typ Web3区块链工程师简历"
    ["hardware"]="resume_hardware.typ 硬件嵌入式工程师简历" 
    ["web2"]="resume_web2.typ Web2前端开发工程师简历"
    ["general"]="resume.typ 通用版简历"
)

# 颜色输出函数
print_green() { echo -e "\033[32m$1\033[0m"; }
print_red() { echo -e "\033[31m$1\033[0m"; }
print_blue() { echo -e "\033[34m$1\033[0m"; }
print_yellow() { echo -e "\033[33m$1\033[0m"; }

# 显示使用帮助
show_help() {
    print_blue "🚀 多版本简历编译工具"
    echo ""
    echo "用法: $0 [选项] [简历类型]"
    echo ""
    echo "简历类型:"
    echo "  web3      - Web3/区块链工程师简历"
    echo "  hardware  - 硬件/嵌入式工程师简历" 
    echo "  web2      - Web2/前端开发工程师简历"
    echo "  general   - 通用版简历"
    echo "  all       - 编译所有版本"
    echo ""
    echo "选项:"
    echo "  -h, --help     显示此帮助信息"
    echo "  -l, --list     列出所有可用简历版本"
    echo "  -c, --clean    清理备份文件"
    echo ""
    echo "示例:"
    echo "  $0 web3           # 编译Web3版本简历"
    echo "  $0 all            # 编译所有版本简历"
    echo "  $0 --list         # 列出所有版本"
}

# 列出所有可用版本
list_versions() {
    print_blue "📋 可用的简历版本:"
    echo ""
    for key in "${!RESUME_CONFIGS[@]}"; do
        IFS=' ' read -r file description <<< "${RESUME_CONFIGS[$key]}"
        if [ -f "$file" ]; then
            print_green "  ✅ $key - $description"
        else
            print_red "  ❌ $key - $description (文件不存在: $file)"
        fi
    done
    echo ""
}

# 检查 Typst 是否安装
check_typst() {
    if ! command -v typst &> /dev/null; then
        print_red "❌ 错误: Typst 未安装，正在尝试安装..."
        print_blue "📦 下载并安装 Typst..."
        wget -qO typst.tar.xz https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz
        tar xf typst.tar.xz --strip-components=1 -C /tmp/
        sudo mv /tmp/typst /usr/local/bin/
        rm -f typst.tar.xz
        print_green "✅ Typst 安装完成"
    fi
}

# 编译单个简历
compile_resume() {
    local resume_type=$1
    local config="${RESUME_CONFIGS[$resume_type]}"
    
    if [ -z "$config" ]; then
        print_red "❌ 错误: 未知的简历类型 '$resume_type'"
        return 1
    fi
    
    IFS=' ' read -r input_file description <<< "$config"
    local output_file="resume_${resume_type}.pdf"
    
    # 检查输入文件
    if [ ! -f "$input_file" ]; then
        print_red "❌ 错误: 源文件不存在 '$input_file'"
        return 1
    fi
    
    print_blue "🔨 编译 $description"
    echo "   源文件: $input_file"
    echo "   目标文件: $output_file"
    
    # 创建备份
    mkdir -p "$BACKUP_DIR"
    if [ -f "$output_file" ]; then
        cp "$output_file" "$BACKUP_DIR/${resume_type}_backup_$DATE.pdf"
        print_yellow "📂 备份现有文件到: $BACKUP_DIR/${resume_type}_backup_$DATE.pdf"
    fi
    
    # 编译
    if typst compile "$input_file" "$output_file"; then
        local file_size=$(du -h "$output_file" | cut -f1)
        print_green "✅ 编译成功: $output_file (大小: $file_size)"
        
        # 显示PDF信息
        if command -v pdfinfo &> /dev/null; then
            echo "📊 PDF信息:"
            pdfinfo "$output_file" | grep -E "(Pages|Title|Creator)" | sed 's/^/     /'
        fi
        
        return 0
    else
        print_red "❌ 编译失败: $input_file"
        return 1
    fi
}

# 编译所有版本
compile_all() {
    print_blue "🚀 开始编译所有简历版本"
    echo ""
    
    local success_count=0
    local total_count=0
    
    for resume_type in "${!RESUME_CONFIGS[@]}"; do
        if [ "$resume_type" = "general" ]; then
            continue  # 跳过通用版本，避免重复
        fi
        
        total_count=$((total_count + 1))
        echo ""
        if compile_resume "$resume_type"; then
            success_count=$((success_count + 1))
        fi
    done
    
    echo ""
    print_blue "📊 编译结果汇总:"
    print_green "   ✅ 成功: $success_count/$total_count"
    
    if [ $success_count -lt $total_count ]; then
        print_red "   ❌ 失败: $((total_count - success_count))/$total_count"
    fi
}

# 清理备份文件
clean_backups() {
    if [ -d "$BACKUP_DIR" ]; then
        print_yellow "🧹 清理备份文件..."
        rm -rf "$BACKUP_DIR"/*
        print_green "✅ 备份文件已清理"
    else
        print_blue "💡 没有备份文件需要清理"
    fi
}

# 主程序
main() {
    print_blue "🚀 多版本简历编译工具"
    echo ""
    
    # 检查参数
    case "${1:-}" in
        -h|--help)
            show_help
            exit 0
            ;;
        -l|--list)
            list_versions
            exit 0
            ;;
        -c|--clean)
            clean_backups
            exit 0
            ;;
        "")
            print_yellow "💡 未指定简历类型，显示帮助信息..."
            echo ""
            show_help
            exit 0
            ;;
        all)
            check_typst
            compile_all
            ;;
        *)
            if [[ -n "${RESUME_CONFIGS[$1]:-}" ]]; then
                check_typst
                compile_resume "$1"
            else
                print_red "❌ 错误: 未知的简历类型 '$1'"
                echo ""
                show_help
                exit 1
            fi
            ;;
    esac
    
    # 显示可用操作提示
    echo ""
    print_blue "💡 使用提示:"
    echo "   查看PDF: xdg-open resume_<类型>.pdf"
    echo "   列出版本: $0 --list"
    echo "   编译所有: $0 all"
    echo "   获取帮助: $0 --help"
}

# 运行主程序
main "$@"