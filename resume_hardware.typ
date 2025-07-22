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
  #line(length: 100%, stroke: 1pt + rgb("#dc2626"))
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
    fill: rgb("#fef2f2"),
    inset: (x: 0.4em, y: 0.2em),
    radius: 0.2em,
    stroke: 1pt + rgb("#dc2626"),
    [#text(size: 9pt, fill: rgb("#7f1d1d"))[#skill]]
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

• 211重点大学，主修控制理论、自动化系统、信号处理等课程
• 嵌入式系统设计、数字电路、模拟电路等硬件课程成绩优秀

#v(0.8em)

// ================================
// 核心技能
// ================================

#section_title("核心技能")

#grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  row-gutter: 0.5em,
  
  [*嵌入式开发*], [#skill_tag("C/C++") #skill_tag("STM32") #skill_tag("Arduino") #skill_tag("RTOS") #skill_tag("FreeRTOS")],
  
  [*硬件设计*], [#skill_tag("PCB设计") #skill_tag("嘉立创EDA") #skill_tag("Altium Designer") #skill_tag("电路仿真")],
  
  [*控制系统*], [#skill_tag("PID控制") #skill_tag("电机驱动") #skill_tag("传感器") #skill_tag("DSP") #skill_tag("FPGA")],
  
  [*通信协议*], [#skill_tag("UART") #skill_tag("SPI") #skill_tag("I2C") #skill_tag("CAN") #skill_tag("Modbus")],
  
  [*开发工具*], [#skill_tag("Keil") #skill_tag("STM32CubeIDE") #skill_tag("JTAG调试") #skill_tag("示波器")],
  
  [*算法与AI*], [#skill_tag("强化学习") #skill_tag("控制算法") #skill_tag("Python") #skill_tag("MATLAB")],
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
  [], [展现了系统建模和算法优化能力], [],
  
  [🏆], [*全国大学生数学竞赛陕西省一等奖*], [2022],
  [], [为控制理论和信号处理提供了坚实的数学基础], [],
  
  [🏆], [*Rust训练营优秀营员*], [2024],
  [], [掌握了现代系统编程，可用于高性能嵌入式开发], [],
)

#v(0.8em)

// ================================
// 项目经历
// ================================

#section_title("项目经历")

#project_item(
  "智能炮塔控制系统",
  "2023.09 - 2023.12",
  [
    *项目类型*：硬件控制系统开发 | *团队规模*：5人
    
    • 设计并实现智能炮塔的嵌入式控制系统，负责核心控制算法和硬件接口开发
    • 使用STM32作为主控芯片，集成电机驱动、传感器数据采集和目标跟踪功能
    • 实现基于PID控制的精确位置控制，响应时间优化至50ms以内
    • 集成多路传感器数据融合，实现自动目标识别和跟踪功能
    
    *核心技术*：STM32, C/C++, PID控制, 电机驱动, 传感器融合
    *项目成果*：系统精度达到设计要求，获得团队优秀项目认可
  ]
)

#project_item(
  "基于强化学习的路径规划研究",
  "2023.03 - 2024.06",
  [
    *项目性质*：省级大学生创新创业训练项目 | *指导教师*：王博士
    
    • 研究智能机器人在复杂环境下的自主导航和路径规划算法
    • 使用深度Q网络(DQN)算法优化移动机器人的实时路径决策
    • 构建仿真环境验证算法有效性，路径搜索效率提升40%
    • 为未来无人机、AGV等智能硬件提供算法支持
    
    *核心技术*：Python, 强化学习, 机器人控制, 算法优化
    *研究价值*：为智能硬件的自主决策提供了新的技术方案
  ]
)

#project_item(
  "多通道数据采集与处理系统",
  "2023.06 - 2023.09",
  [
    *项目描述*：设计并实现工业级多通道数据采集系统
    
    • 基于STM32设计8通道同步数据采集系统，支持多种传感器接入
    • 实现高速ADC采样和数字滤波算法，采样率达到10kHz
    • 设计RS485通信协议，实现与上位机的稳定数据传输
    • 开发上位机监控软件，实现实时数据显示和存储功能
    
    *核心技术*：STM32, ADC, 数字滤波, RS485, 上位机开发
    *技术亮点*：系统稳定性和实时性达到工业应用标准
  ]
)

#project_item(
  "PCB设计与制作实践",
  "2024.01 - 2024.03",
  [
    *工具平台*：嘉立创EDA | *项目类型*：硬件设计实践
    
    • 设计并制作基于STM32的多功能开发板PCB
    • 完成电路原理图设计、器件选型和PCB布线
    • 考虑EMI/EMC设计，优化信号完整性和电源完整性
    • 完成PCB制作、焊接和功能测试，一次点亮成功
    
    *核心技能*：PCB设计, 电路分析, EMI/EMC, 硬件调试
    *实践成果*：掌握了完整的硬件设计流程
  ]
)

#v(0.8em)

// ================================
// 相关技能
// ================================

#section_title("专业技能")

#project_item(
  "硬件开发能力",
  "",
  [
    • *电路设计*：熟练使用嘉立创EDA进行原理图设计和PCB布线
    • *嵌入式编程*：精通C/C++嵌入式开发，熟悉STM32、Arduino等平台
    • *调试测试*：熟练使用示波器、万用表等仪器进行硬件调试
    • *系统集成*：具备传感器接口、通信协议、电机控制等系统集成经验
  ]
)

#project_item(
  "算法与控制",
  "",
  [
    • *控制理论*：深入理解PID控制、状态反馈等经典控制算法
    • *信号处理*：掌握数字滤波、频域分析等信号处理技术
    • *智能算法*：具备机器学习和强化学习算法的理论基础和实践经验
    • *数学建模*：竞赛获奖背景，具备复杂系统建模和优化能力
  ]
)

#v(0.8em)

// ================================
// 个人优势
// ================================

#section_title("个人优势")

• *理论基础扎实*：自动化专业背景，控制理论和信号处理基础深厚

• *动手能力强*：从PCB设计到嵌入式编程的完整硬件开发经验

• *算法能力突出*：数学竞赛获奖，具备算法优化和系统建模能力

• *学习适应力强*：快速掌握新的开发平台和工具，如Rust等现代编程语言

• *项目实战丰富*：参与多个实际硬件项目，具备从设计到实现的完整经验

#v(1em)

#align(center)[
  #text(size: 9pt, style: "italic", fill: rgb("#dc2626"))[
    "Bridging the gap between intelligent algorithms and embedded hardware"
  ]
]