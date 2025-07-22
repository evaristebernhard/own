// 配置页面设置
#set page(
  paper: "a4",
  margin: (x: 1.2cm, y: 1.5cm),
)

// 设置字体
#set text(
  font: ("Noto Sans CJK SC", "Noto Serif CJK SC"),
  size: 10.5pt,
  lang: "zh",
)

// 标题样式
#let section_title(title) = [
  #text(
    size: 14pt,
    weight: "bold",
    fill: rgb("#2c5aa0")
  )[#title]
  #line(length: 100%, stroke: 1pt + rgb("#2c5aa0"))
  #v(-0.3em)
]

// 项目条目样式
#let project_item(title, period, desc) = [
  #grid(
    columns: (1fr, auto),
    [*#title*],
    [#text(style: "italic")[#period]]
  )
  #v(-0.2em)
  #desc
  #v(0.3em)
]

// 技能标签样式
#let skill_tag(skill) = [
  #box(
    fill: rgb("#f0f0f0"),
    inset: (x: 0.4em, y: 0.2em),
    radius: 0.2em,
    [#text(size: 9pt)[#skill]]
  )
]

// ================================
// 个人信息头部
// ================================

#align(center)[
  #text(size: 24pt, weight: "bold")[胡超宇]
  
  #v(0.5em)
  
  #grid(
    columns: (1fr, 1fr, 1fr),
    gutter: 1em,
    [📞 +86 132-7920-7621],
    [`evaristebernhardwiener@gmail.com`],
    [`github.com/henryhello`]
  )
]

#v(1em)

// ================================
// 教育背景
// ================================

#section_title("教育背景")

#grid(
  columns: (1fr, auto),
  [*长安大学* | 自动化专业 | 本科],
  [2022.09 - 2026.06]
)

• 211重点大学，GPA: 3.0/5.0
• 主修课程：控制理论、自动化系统、信号处理、机器学习、强化学习

#v(0.8em)

// ================================
// 获奖经历
// ================================

#section_title("获奖经历")

#grid(
  columns: (auto, 1fr, auto),
  column-gutter: 1em,
  row-gutter: 0.3em,
  
  [Award], [*英语四级证书* - 全国大学英语四级考试委员会], [2023.06],
  [], [具备良好的英语读写能力，能够阅读英文技术文档], [],
  
  [Award], [*全国大学生数学竞赛陕西省一等奖* - 中国数学会], [2024.11],
  [], [展现了扎实的数学基础和优秀的逻辑思维能力], [],
  
  [Award], [*全国数学建模竞赛陕西省一等奖* - 中国工业与应用数学学会], [2023.12],
  [], [体现了解决复杂问题的建模能力和团队协作精神], [],
  
  [Award], [*Rust训练营优秀营员* - RustCC社区 & 清华大学开源学习营], [2024.03],
  [], [掌握了现代系统编程语言，具备高性能软件开发能力], [],
)

#v(0.8em)

// ================================
// 项目经历
// ================================

#section_title("项目经历")

#project_item(
  "省级大学生创新创业训练项目",
  "2023.09 - 2024.06",
  [
    *项目主题*：基于强化学习的路径规划问题研究 | *指导教师*：王长鹏老师 | *资助单位*：陕西省教育厅
    
    • 研究并实现了基于深度Q网络(DQN)的智能路径规划算法，在复杂环境下实现自主导航
    • 构建了多智能体强化学习仿真环境，验证了算法在动态障碍物场景下的有效性
    • 优化路径搜索效率提升40%，成功实现了机器人在未知环境中的避障与导航
    
    *技术栈*：Python, TensorFlow, 强化学习算法, 仿真建模
  ]
)

#project_item(
  "简易区块链系统开发",
  "2024.01 - 2024.05",
  [
    *项目地址*：github.com/henryhello/blockchain
    
    • 使用Rust实现完整的区块链系统，包含区块结构、挖矿机制、交易验证等核心功能
    • 实现基于ED25519的数字签名和SHA-256工作量证明算法，确保系统安全性
    • 构建钱包管理系统和命令行交互界面，支持创建交易、查询余额等操作
    • 实现数据持久化存储和默克尔树验证，保证交易数据的完整性
    
    *技术栈*：Rust, 密码学, 区块链技术, CLI开发
  ]
)

#project_item(
  "空气质量VIBE代币奖励DApp",
  "2024.03 - 2024.06",
  [
    *项目地址*：github.com/evaristebernhard/temperature
    
    • 基于Primus zkTLS零知识证明技术开发的去中心化应用，通过验证空气质量数据获得代币奖励
    • 实现ERC20标准的VIBE代币智能合约，部署在Monad测试网并支持MetaMask集成
    • 构建React前端应用，集成Ethers.js实现钱包连接、代币交互等Web3功能
    • 设计智能奖励机制：根据AQI指数分配不同数量的代币，并实现防重复领取机制
    
    *技术栈*：Solidity, React, TypeScript, Ethers.js, zkTLS, Web3
  ]
)

#project_item(
  "智能炮塔控制系统",
  "2023.09 - 2023.12",
  [
    • 参与硬件控制系统的设计与开发，负责控制算法实现和硬件接口调试
    • 基于嵌入式系统实现目标跟踪和自动瞄准功能，提高系统响应速度
    • 运用控制理论知识优化PID控制参数，实现精确的位置控制
    
    *技术栈*：C/C++, 嵌入式开发, 控制理论, 硬件接口
  ]
)

#v(0.8em)

// ================================
// 实习经历
// ================================

#section_title("实习经历")

#project_item(
  "软件自动化RPA开发实习生",
  "2024.12 - 2025.02",
  [
    *公司*：某互联网科技公司 | *部门*：产品技术部
    
    • 负责RPA(软件流程自动化)解决方案的设计与实现，成功实现业务流程自动化提升效率35%
    • 使用Vue.js开发用户友好的操作界面，支持拖拽式流程配置和实时监控功能
    • 参与客户需求分析和系统集成工作，协助完成多个企业级RPA项目的部署和维护
    • 开发的前端界面获得客户积极反馈，显著改善了用户体验
    
    *技术栈*：Vue.js, JavaScript, RPA平台, 前端开发
  ]
)

#v(0.8em)

// ================================
// 技能与能力
// ================================

#section_title("技能与能力")

#grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  row-gutter: 0.5em,
  
  [*编程语言*], [#skill_tag("Rust") #skill_tag("Python") #skill_tag("JavaScript") #skill_tag("C/C++") #skill_tag("Solidity")],
  
  [*前端技术*], [#skill_tag("Vue.js") #skill_tag("React") #skill_tag("TypeScript") #skill_tag("HTML/CSS")],
  
  [*区块链*], [#skill_tag("智能合约开发") #skill_tag("Web3.js/Ethers.js") #skill_tag("DApp开发") #skill_tag("zkTLS")],
  
  [*机器学习*], [#skill_tag("深度学习") #skill_tag("强化学习") #skill_tag("TensorFlow") #skill_tag("数据分析")],
  
  [*开发工具*], [#skill_tag("IntelliJ IDEA") #skill_tag("Git") #skill_tag("Docker") #skill_tag("Linux")],
  
  [*硬件开发*], [#skill_tag("PCB设计") #skill_tag("嵌入式开发") #skill_tag("嘉立创EDA") #skill_tag("控制系统")],
  
  [*数学建模*], [#skill_tag("算法优化") #skill_tag("数值计算") #skill_tag("仿真建模") #skill_tag("统计分析")],
)

#v(0.8em)

// ================================
// 个人优势
// ================================

#section_title("个人特质")

• *学术能力强*：多项省级竞赛获奖，理论基础扎实，具备独立研究和创新能力

• *技术视野广*：涵盖前端开发、区块链、机器学习、硬件设计等多个技术领域

• *实践经验丰富*：从学术研究到企业实习，具备完整的项目开发和工程实践经历

• *学习适应力强*：快速掌握新技术并获得认可，在Rust、区块链等前沿技术方面表现突出

• *问题解决能力*：善于将理论知识应用到实际问题中，具备良好的分析和解决复杂问题的能力

#v(1em)

#align(center)[
  #text(size: 9pt, style: "italic")[
    "热衷技术创新，专注于用代码解决实际问题，期待在更大的平台上发挥专业能力"
  ]
]