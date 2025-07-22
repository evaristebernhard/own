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
    fill: rgb("#1f2937")
  )[#title]
  #line(length: 100%, stroke: 1pt + rgb("#10b981"))
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
    fill: rgb("#ecfdf5"),
    inset: (x: 0.4em, y: 0.2em),
    radius: 0.2em,
    stroke: 1pt + rgb("#10b981"),
    [#text(size: 9pt, fill: rgb("#065f46"))[#skill]]
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

• 211重点大学，主修控制理论、信号处理、机器学习等课程
• 深度学习和区块链技术相关课程成绩优秀

#v(0.8em)

// ================================
// Web3 核心技能
// ================================

#section_title("核心技能")

#grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  row-gutter: 0.5em,
  
  [*区块链开发*], [#skill_tag("Solidity") #skill_tag("智能合约") #skill_tag("ERC20/ERC721") #skill_tag("Web3.js") #skill_tag("Ethers.js")],
  
  [*DApp开发*], [#skill_tag("React") #skill_tag("TypeScript") #skill_tag("MetaMask集成") #skill_tag("钱包连接")],
  
  [*系统编程*], [#skill_tag("Rust") #skill_tag("区块链架构") #skill_tag("密码学") #skill_tag("P2P网络")],
  
  [*零知识证明*], [#skill_tag("zkTLS") #skill_tag("Primus Labs") #skill_tag("隐私计算")],
  
  [*开发工具*], [#skill_tag("Hardhat") #skill_tag("Foundry") #skill_tag("IPFS") #skill_tag("Git")],
)

#v(0.8em)

// ================================
// 获奖与认证
// ================================

#section_title("获奖与认证")

#grid(
  columns: (auto, 1fr, auto),
  column-gutter: 1em,
  row-gutter: 0.3em,
  
  [🏆], [*Rust训练营优秀营员*], [2024],
  [], [掌握了现代系统编程语言，具备高性能区块链开发能力], [],
  
  [🏆], [*全国数学建模竞赛陕西省一等奖*], [2023],
  [], [展现了算法设计和密码学数学基础], [],
  
  [🏆], [*全国大学生数学竞赛陕西省一等奖*], [2022],
  [], [为区块链密码学算法提供了坚实的数学基础], [],
)

#v(0.8em)

// ================================
// Web3 项目经历
// ================================

#section_title("Web3 项目经历")

#project_item(
  "空气质量VIBE代币奖励DApp",
  "2024.03 - 2024.06",
  [
    *项目地址*：github.com/evaristebernhard/temperature | *部署网络*：Monad Testnet
    
    • 基于Primus zkTLS零知识证明技术开发去中心化应用，实现数据隐私验证
    • 开发ERC20标准的VIBE代币智能合约，实现防重复领取和智能奖励分配机制
    • 构建React + TypeScript前端，集成MetaMask钱包和Ethers.js实现完整Web3交互
    • 部署在Monad测试网，支持真实的链上交易和代币转账功能
    
    *核心技术*：Solidity, ERC20, React, Ethers.js, zkTLS, MetaMask
    *业务价值*：展示了零知识证明在现实数据验证中的应用潜力
  ]
)

#project_item(
  "简易区块链系统开发",
  "2024.01 - 2024.05",
  [
    *项目地址*：github.com/henryhello/blockchain | *开发语言*：Rust
    
    • 从零实现完整区块链系统，包含区块结构、挖矿算法、交易验证等核心功能
    • 实现基于ED25519的数字签名系统和SHA-256工作量证明算法
    • 构建P2P网络通信模拟和默克尔树数据验证机制
    • 开发CLI钱包管理系统，支持创建交易、查询余额、挖矿等操作
    
    *核心技术*：Rust, 密码学, 共识算法, 数据结构
    *技术亮点*：展示了对区块链底层技术的深度理解
  ]
)

#project_item(
  "基于强化学习的路径规划研究",
  "2023.03 - 2024.06",
  [
    *项目性质*：省级大学生创新创业训练项目 | *指导教师*：王博士
    
    • 将强化学习算法应用于去中心化网络的路由优化问题
    • 使用深度Q网络(DQN)算法实现智能合约Gas费用优化路径规划
    • 为未来区块链网络扩容和性能优化提供算法基础
    
    *核心技术*：Python, 强化学习, 算法优化
    *研究价值*：为区块链性能优化提供了新的技术思路
  ]
)

#v(0.8em)

// ================================
// Web3 相关经历
// ================================

#section_title("相关经历")

#project_item(
  "区块链技术自学与实践",
  "2023.06 - 至今",
  [
    • 深入学习以太坊、Polygon、Arbitrum等主流区块链网络架构
    • 完成多个DeFi协议交互实践，理解AMM、流动性挖矿等机制
    • 参与多个Web3项目的测试网体验，积累链上操作经验
    • 关注Web3行业发展趋势，了解Layer2、跨链、NFT等前沿技术
  ]
)

#v(0.8em)

// ================================
// 个人优势
// ================================

#section_title("个人优势")

• *区块链技术深度*：从底层系统到DApp开发的全栈Web3技术能力

• *密码学基础扎实*：数学竞赛获奖背景为密码学算法提供理论支撑

• *新技术快速学习*：Rust优秀营员认证体现了对前沿技术的快速掌握能力

• *项目实战经验*：拥有完整的智能合约开发到DApp部署的实践经验

• *创新研究能力*：将AI算法与区块链技术结合，具备技术创新思维

#v(1em)

#align(center)[
  #text(size: 9pt, style: "italic", fill: rgb("#10b981"))[
    "Building the future of decentralized applications with passion and innovation"
  ]
]