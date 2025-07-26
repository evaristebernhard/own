// 配置页面设置
#set page(
  paper: "a4",
  margin: (x: 1.2cm, y: 1.2cm),
)

// 设置字体
#set text(
  font: ("Noto Sans CJK SC", "Noto Serif CJK SC", "DejaVu Sans"),
  size: 10pt,
  lang: "zh",
)

// 设置段落间距
#set par(leading: 0.6em)

// 标题样式
#let section_title(title, icon: "") = [
  #text(
    size: 13pt,
    weight: "bold",
    fill: rgb("#1e40af")
  )[#icon #title]
  #line(length: 100%, stroke: 1.5pt + rgb("#3b82f6"))
  #v(-0.2em)
]

// 项目条目样式
#let project_item(title, period, company: "", desc) = [
  #grid(
    columns: (1fr, auto),
    [*#title* #if company != "" [#text(fill: rgb("#6b7280"))[(#company)]]],
    [#text(style: "italic", size: 9pt, fill: rgb("#6b7280"))[#period]]
  )
  #v(-0.1em)
  #desc
  #v(0.4em)
]

// 技能标签样式 - 更现代的设计
#let skill_tag(skill, level: "expert") = {
  let color = if level == "expert" {
    (bg: rgb("#eff6ff"), border: rgb("#3b82f6"), text: rgb("#1e40af"))
  } else if level == "proficient" {
    (bg: rgb("#f0fdf4"), border: rgb("#22c55e"), text: rgb("#16a34a"))
  } else {
    (bg: rgb("#fef2f2"), border: rgb("#ef4444"), text: rgb("#dc2626"))
  }
  
  box(
    fill: color.bg,
    inset: (x: 0.5em, y: 0.25em),
    radius: 0.3em,
    stroke: 1pt + color.border,
    [#text(size: 8.5pt, fill: color.text, weight: "medium")[#skill]]
  )
}

// 成就亮点样式
#let achievement(icon, content) = [
  #grid(
    columns: (auto, 1fr),
    column-gutter: 0.5em,
    [#text(fill: rgb("#059669"), size: 12pt)[#icon]],
    [#content]
  )
]

// ================================
// 个人信息头部
// ================================

#align(center)[
  #text(size: 26pt, weight: "bold", fill: rgb("#1f2937"))[胡超宇]
  #v(0.3em)
  #text(size: 11pt, fill: rgb("#6b7280"))[Web3 区块链工程师 | 自动化专业本科生]
  
  #v(0.5em)
  
  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 1em,
    [📱 197-3087-8895],
    [✉️ `evaristebernhardwiener@gmail.com`],
    [💻 `github.com/henryhello`]
  )
]

#v(0.8em)

// ================================
// 核心竞争力摘要
// ================================

#section_title("核心竞争力", icon: "🎯")

#text(size: 10pt)[
  具备完整的区块链技术栈，从Solidity智能合约开发到DApp前端集成的全栈能力。精通Rust系统编程，掌握零知识证明(zkTLS)等前沿技术。在校期间获得*数学竞赛省一等奖*，具备扎实的密码学数学基础。参与开发的区块链项目已在测试网成功部署，DApp累计交互用户*500+*，展现出强技术实力和创新能力。
]

#v(0.6em)

// ================================
// 教育背景
// ================================

#section_title("教育背景", icon: "🎓")

#project_item(
  "长安大学",
  "2022.09 - 2026.06",
  company: "自动化专业 | 本科",
  [
    • *211重点大学* | GPA: 3.0/5.0 | 主修课程：控制理论、机器学习、信号处理
    • 自学区块链开发技术栈，完成多个Web3项目实战
  ]
)

#v(0.4em)

// ================================
// 专业技能
// ================================

#section_title("专业技能", icon: "⚡")

#grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  row-gutter: 0.4em,
  
  [*AI开发工具*], [#skill_tag("Claude Code", level: "proficient") #skill_tag("Cursor", level: "proficient") #skill_tag("Nora.ai", level: "basic") #skill_tag("AI辅助编程", level: "proficient")],
  
  [*区块链开发*], [#skill_tag("Solidity", level: "expert") #skill_tag("智能合约", level: "expert") #skill_tag("ERC20/ERC721", level: "expert") #skill_tag("Web3.js", level: "proficient") #skill_tag("Ethers.js", level: "proficient")],
  
  [*DApp开发*], [#skill_tag("React", level: "expert") #skill_tag("TypeScript", level: "proficient") #skill_tag("MetaMask集成", level: "expert") #skill_tag("Hardhat", level: "proficient")],
  
  [*系统编程*], [#skill_tag("Rust", level: "expert") #skill_tag("区块链架构", level: "proficient") #skill_tag("密码学", level: "proficient") #skill_tag("零知识证明", level: "basic")],
  
  [*前端技术*], [#skill_tag("Vue.js", level: "expert") #skill_tag("JavaScript", level: "expert") #skill_tag("响应式设计", level: "proficient")],
  
  [*AI/算法*], [#skill_tag("强化学习", level: "proficient") #skill_tag("Python", level: "expert") #skill_tag("数据建模", level: "expert")],
)

#v(0.6em)

// ================================
// 获奖经历
// ================================

#section_title("获奖经历", icon: "Award")

#grid(
  columns: (auto, 1fr, auto),
  column-gutter: 1em,
  row-gutter: 0.3em,
  
  [★], [*英语四级证书* - 全国大学英语四级考试], [2024.06],
  [], [具备良好的英语读写能力，能够阅读英文技术文档], [],
  
  [▲], [*Rust训练营优秀营员* - RustCC社区 & 清华大学开源学习营], [2025.03],
  [], [掌握现代系统编程，具备高性能区块链开发能力], [],
  
  [●], [*全国数学建模竞赛陕西省一等奖* - 中国工业与应用数学学会], [2023.12],
  [], [展现算法设计和密码学数学基础，为区块链技术提供理论支撑], [],
  
  [●], [*全国大学生数学竞赛陕西省一等奖* - 中国数学会], [2024.11],
  [], [扎实的数学功底，为智能合约安全性分析提供基础], [],
)

#v(0.6em)

// ================================
// 项目经历
// ================================

#section_title("项目经历", icon: "🚀")

#project_item(
  "VIBE空气质量代币奖励DApp",
  "2024.03 - 2024.06",
  company: "基于Primus zkTLS的Web3应用",
  [
    *项目地址*：github.com/evaristebernhard/temperature | *部署网络*：Monad Testnet
    
    #achievement("💡", [设计并实现基于零知识证明的去中心化应用，用户通过验证空气质量数据获得代币奖励])
    #achievement("🔧", [开发完整的ERC20代币系统，实现智能奖励分配和防重复领取机制])  
    #achievement("🎨", [构建React前端界面，集成MetaMask钱包，实现流畅的Web3用户体验])
    #achievement("🤖", [使用Nora.ai协助智能合约代码审计和优化，提升代码质量和安全性])
    #achievement("📊", [部署在Monad测试网，实现基于零知识证明的数据验证机制])
    
    *技术栈*：Solidity • React • TypeScript • Ethers.js • zkTLS • Hardhat
  ]
)

#project_item(
  "Rust区块链底层系统",
  "2023.10 - 2024.02", 
  company: "从零实现的完整区块链",
  [
    *项目地址*：github.com/henryhello/blockchain
    
    #achievement("⚙️", [从零实现完整区块链系统，包含挖矿、交易验证、钱包管理等核心功能])
    #achievement("🔐", [集成ED25519数字签名和SHA-256工作量证明，确保系统安全性])
    #achievement("🏗️", [实现默克尔树验证和持久化存储，支持命令行交互界面])
    #achievement("📈", [系统实现核心区块链功能，包含完整的交易处理流程])
    
    *技术栈*：Rust • 密码学 • P2P网络 • 数据结构 • CLI开发
  ]
)

#project_item(
  "CI/CD自动化部署系统",
  "2024.07 - 2024.09",
  company: "基于 GitHub Actions 的流水线",
  [
    #achievement("⚙️", [配置 GitHub Actions 实现 CI/CD，代码 push 后自动构建和部署到服务器])
    #achievement("⚡", [将部署时间从手动操作的15分钟缩短至3分钟内，显著提升开发效率])
    #achievement("🔒", [集成自动化测试、代码质量检查和安全扫描，确保部署质量])
    #achievement("📊", [支持多环境部署（开发/测试/生产），实现环境隔离和版本管理])
    
    *技术栈*：GitHub Actions • Docker • Shell Script • Linux • Nginx
  ]
)

#project_item(
  "基于强化学习的智能路径规划",
  "2023.09 - 2024.06",
  company: "省级大创项目",
  [
    *指导教师*：王长鹏老师 | *资助单位*：陕西省教育厅
    
    #achievement("🧠", [研究深度Q网络(DQN)算法在动态环境下的路径规划问题])
    #achievement("🎯", [构建多智能体仿真环境，验证算法的收敛性和稳定性])
    #achievement("🎯", [算法在复杂场景下具备优秀的收敛性和稳定性，为智能硬件提供决策支持])
    
    *技术栈*：Python • TensorFlow • 强化学习 • 算法优化
  ]
)

#v(0.6em)

// ================================
// 实习经历  
// ================================

#section_title("实习经历", icon: "💼")

#project_item(
  "RPA自动化平台前端开发",
  "2024.12 - 2025.02",
  company: "湖州鲸创智能科技有限公司",
  [
    #achievement("🎨", [使用Vue.js构建企业级RPA配置界面，支持拖拽式流程设计，用户操作效率提升60%])
    #achievement("⚡", [开发实时监控仪表板，集成WebSocket，实现毫秒级状态更新])
    #achievement("💰", [协助完成5个企业客户业务流程自动化，为客户节省人力成本35%])
    
    *技术栈*：Vue.js • Element UI • WebSocket • 前端工程化
  ]
)

#v(0.6em)

// ================================
// 技术成果
// ================================

#section_title("技术成果", icon: "📈")

• *开源贡献*：GitHub上维护2个区块链相关开源项目，累计Star 50+，为Web3社区贡献代码
• *AI开发工具*：熟练使用Claude Code和Cursor进行AI辅助编程，代码编写效率提升50%以上
• *技术文章*：撰写区块链技术博客文章5篇，深入讲解DApp开发实践，获得良好反馈  
• *竞赛成绩*：数学建模和数学竞赛双料省一等奖，展现出色的算法设计和问题解决能力
• *学习认证*：Rust训练营优秀营员，掌握系统级编程语言，具备高性能应用开发能力

#v(0.8em)

#align(center)[
  #text(size: 9pt, style: "italic", fill: rgb("#3b82f6"))[
    "Building the decentralized future with innovative blockchain solutions"
  ]
]