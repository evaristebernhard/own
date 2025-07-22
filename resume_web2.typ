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
  #line(length: 100%, stroke: 1pt + rgb("#3b82f6"))
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
    fill: rgb("#eff6ff"),
    inset: (x: 0.4em, y: 0.2em),
    radius: 0.2em,
    stroke: 1pt + rgb("#3b82f6"),
    [#text(size: 9pt, fill: rgb("#1e40af"))[#skill]]
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
• 前端开发和软件工程相关课程成绩优秀

#v(0.8em)

// ================================
// 核心技能
// ================================

#section_title("核心技能")

#grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  row-gutter: 0.5em,
  
  [*前端开发*], [#skill_tag("Vue.js") #skill_tag("React") #skill_tag("JavaScript") #skill_tag("TypeScript") #skill_tag("HTML5/CSS3")],
  
  [*后端技术*], [#skill_tag("Node.js") #skill_tag("Python") #skill_tag("RESTful API") #skill_tag("数据库") #skill_tag("微服务")],
  
  [*RPA开发*], [#skill_tag("流程自动化") #skill_tag("业务流程优化") #skill_tag("界面自动化") #skill_tag("数据采集")],
  
  [*开发工具*], [#skill_tag("IntelliJ IDEA") #skill_tag("VS Code") #skill_tag("Git") #skill_tag("Docker") #skill_tag("CI/CD")],
  
  [*数据与AI*], [#skill_tag("数据分析") #skill_tag("机器学习") #skill_tag("Python") #skill_tag("数据可视化")],
)

#v(0.8em)

// ================================
// 获奖经历
// ================================

#section_title("获奖经历")

#grid(
  columns: (auto, 1fr, auto),
  column-gutter: 1em,
  row-gutter: 0.3em,
  
  [🏆], [*全国数学建模竞赛陕西省一等奖*], [2023],
  [], [展现了数据建模和算法优化能力], [],
  
  [🏆], [*全国大学生数学竞赛陕西省一等奖*], [2022],
  [], [为算法设计和数据分析提供了坚实基础], [],
  
  [🏆], [*Rust训练营优秀营员*], [2024],
  [], [掌握了现代编程语言，具备高性能后端开发潜力], [],
)

#v(0.8em)

// ================================
// 项目经历
// ================================

#section_title("项目经历")

#project_item(
  "企业级RPA流程自动化平台",
  "2024.12 - 2025.02 (实习项目)",
  [
    *公司*：某互联网科技公司 | *团队规模*：8人 | *角色*：前端开发工程师
    
    • 使用Vue.js构建RPA流程配置和监控界面，支持拖拽式流程设计
    • 开发实时监控仪表板，集成WebSocket实现流程执行状态的实时更新
    • 实现用户权限管理和多租户隔离功能，提升平台安全性
    • 优化前端性能，首屏加载时间减少60%，用户体验显著改善
    
    *核心技术*：Vue.js, JavaScript, WebSocket, Element UI, Echarts
    *业务价值*：成功实现5个企业客户业务流程自动化，效率提升35%
  ]
)

#project_item(
  "智能数据分析与可视化系统",
  "2023.09 - 2024.01",
  [
    *项目类型*：数据驱动的Web应用 | *开发模式*：全栈开发
    
    • 基于React + Node.js构建数据分析平台，支持多种数据源接入
    • 集成机器学习算法，实现数据智能分析和预测功能
    • 开发交互式数据可视化组件，支持自定义图表和仪表板
    • 实现数据报告自动生成和定时推送功能
    
    *核心技术*：React, Node.js, Python, D3.js, MongoDB, 机器学习
    *技术亮点*：数据处理效率提升3倍，支持百万级数据实时分析
  ]
)

#project_item(
  "基于强化学习的智能推荐系统",
  "2023.03 - 2024.06",
  [
    *项目性质*：省级大学生创新创业训练项目 | *指导教师*：王博士
    
    • 研究并实现基于强化学习的个性化推荐算法
    • 构建用户行为分析模型，优化推荐准确率达到85%
    • 开发Web端推荐系统演示平台，展示算法效果
    • 为电商和内容平台的推荐系统优化提供技术方案
    
    *核心技术*：Python, 强化学习, 推荐算法, React, 数据挖掘
    *研究价值*：为互联网产品的用户体验优化提供了新的技术思路
  ]
)

#project_item(
  "企业官网重构与性能优化",
  "2024.03 - 2024.05",
  [
    *项目描述*：某中型企业官网的现代化改造项目
    
    • 使用React + TypeScript重构传统jQuery网站，提升代码可维护性
    • 实现响应式设计，适配PC和移动端，提升用户体验
    • 集成CMS内容管理系统，支持非技术人员进行内容更新
    • 优化SEO和网站性能，页面加载速度提升80%
    
    *核心技术*：React, TypeScript, 响应式设计, CMS集成, SEO优化
    *项目成果*：网站访问量提升150%，用户停留时间增加40%
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
    
    • 负责RPA平台前端界面开发，使用Vue.js构建用户友好的操作界面
    • 参与业务流程分析和自动化方案设计，与产品经理协作优化用户体验
    • 开发拖拽式流程配置功能，降低了用户使用门槛
    • 参与客户需求调研和技术支持，积累了丰富的B端产品经验
    
    *技术栈*：Vue.js, JavaScript, Element UI, Webpack
    *实习收获*：深入理解企业级软件开发流程和B端产品设计理念
  ]
)

#v(0.8em)

// ================================
// 技术能力
// ================================

#section_title("技术专长")

#project_item(
  "前端开发能力",
  "",
  [
    • *现代框架*：精通Vue.js和React开发，具备组件化和状态管理经验
    • *工程化*：熟悉Webpack、Vite等构建工具，了解CI/CD流程
    • *用户体验*：注重界面设计和交互优化，具备良好的产品思维
    • *性能优化*：掌握前端性能调优技术，代码优化和缓存策略
  ]
)

#project_item(
  "全栈开发能力",
  "",
  [
    • *后端技术*：熟悉Node.js开发，了解Python Web开发
    • *数据库*：掌握MySQL、MongoDB等数据库的设计和优化
    • *API设计*：具备RESTful API设计和开发经验
    • *系统集成*：了解微服务架构，具备系统集成和部署经验
  ]
)

#v(0.8em)

// ================================
// 个人优势
// ================================

#section_title("个人优势")

• *产品思维敏锐*：具备良好的用户体验意识和产品设计思维

• *技术基础扎实*：数学竞赛获奖背景为算法优化提供理论支持

• *学习能力强*：快速掌握新技术框架，如Rust等现代编程语言

• *项目经验丰富*：从前端开发到全栈应用的完整项目实践经验

• *沟通协作能力*：实习期间与产品、设计团队良好协作，具备团队精神

#v(1em)

#align(center)[
  #text(size: 9pt, style: "italic", fill: rgb("#3b82f6"))[
    "Creating exceptional user experiences through clean code and innovative design"
  ]
]