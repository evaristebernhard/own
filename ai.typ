// Page setup
#set page(
  paper: "a4",
  margin: (x: 1.2cm, y: 1.5cm),
)

// Font setup
#set text(
  font: ("Noto Sans", "Noto Serif", "DejaVu Sans"),
  size: 10.5pt,
)

// Section title style
#let section_title(title) = [
  #text(
    size: 14pt,
    weight: "bold",
    fill: rgb("#1f2937")
  )[#title]
  #line(length: 100%, stroke: 1pt + rgb("#3b82f6"))
  #v(-0.3em)
]

// Project item style
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

// Skill tag style
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
    inset: (x: 0.4em, y: 0.2em),
    radius: 0.2em,
    stroke: 1pt + color.border,
    [#text(size: 9pt, fill: color.text)[#skill]]
  )
}

// ================================
// Header
// ================================

#align(center)[
  #text(size: 24pt, weight: "bold")[Chaoyu Hu]
  
  #v(0.5em)
  
  #grid(
    columns: (auto, auto, auto),
    gutter: 1.5em,
    [📞 +86 132-7920-7621],
    [`evaristebernhardwiener@gmail.com`],
    [`github.com/henryhello`]
  )
]

#v(1em)

// ================================
// Profile
// ================================

#section_title("Profile")

Proactive and results-oriented Automation undergraduate with a strong foundation in software engineering, machine learning, and system design. Recognized as an *Outstanding Participant* at the Rust Camp hosted by the RustCC Community and Tsinghua University, demonstrating a rapid mastery of modern, high-performance programming languages. Eager to apply my skills in Rust, AI, and backend development to contribute to Kong's AI Gateway team.

#v(0.8em)

// ================================
// Education
// ================================

#section_title("Education")

#grid(
  columns: (1fr, auto),
  [*Chang'an University* | B.S. in Automation],
  [Sep 2022 - Jun 2026 (Expected)]
)

• A "Project 211" key national university.
• Relevant Coursework: Control Theory, Signal Processing, Machine Learning, Software Engineering, Data Structures & Algorithms.

#v(0.8em)

// ================================
// Technical Skills
// ================================

#section_title("Technical Skills")

#grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  row-gutter: 0.5em,
  
  [*Languages*],[#skill_tag("Rust", level: "proficient") #skill_tag("Python", level: "proficient") #skill_tag("JavaScript", level: "expert") #skill_tag("TypeScript", level: "proficient") #skill_tag("SQL", level: "proficient")],

  [*Backend & DevOps*],[#skill_tag("Node.js", level: "proficient") #skill_tag("RESTful API", level: "expert") #skill_tag("Docker", level: "proficient") #skill_tag("CI/CD", level: "proficient") #skill_tag("Microservices", level: "basic") #skill_tag("Databases", level: "proficient")],

  [*AI & Data*],[#skill_tag("Machine Learning", level: "proficient") #skill_tag("Data Analysis", level: "proficient") #skill_tag("Reinforcement Learning", level: "proficient") #skill_tag("Python (Pandas, Scikit-learn)", level: "proficient") #skill_tag("Data Visualization", level: "expert")],

  [*Frontend*],[#skill_tag("React", level: "expert") #skill_tag("Vue.js", level: "expert") #skill_tag("HTML5/CSS3", level: "expert") #skill_tag("Webpack", level: "proficient")],

  [*Development Tools*],[#skill_tag("Git", level: "expert") #skill_tag("VS Code", level: "expert") #skill_tag("IntelliJ IDEA", level: "expert")],
)

#v(0.8em)

// ================================
// Honors & Awards
// ================================

#section_title("Honors & Awards")

#grid(
  columns: (auto, 1fr, auto),
  column-gutter: 1em,
  row-gutter: 0.3em,
  
  [★], [*Outstanding Participant, Rust Camp* - RustCC & Tsinghua University], [Mar 2025],
  [], [Gained hands-on experience with Rust, building a foundation for high-performance, memory-safe backend development.], [],
  
  [●], [*First Prize (Provincial), National Mathematical Contest in Modeling* - CUMCM], [Dec 2023],
  [], [Demonstrated strong capabilities in data modeling and algorithmic optimization.], [],
  
  [●], [*First Prize (Provincial), National College Students Mathematics Competition* - CMS], [Nov 2024],
  [], [Provides a solid theoretical basis for algorithm design and data analysis.], [],

  [▲], [*CET-4 Certificate* - National College English Testing Committee], [Jun 2024],
  [], [Proficient in reading and writing English, fully capable of understanding technical documentation.], [],
)

#v(0.8em)

// ================================
// Project Experience
// ================================

#section_title("Project Experience")

#project_item(
  "Enterprise RPA Process Automation Platform",
  "Dec 2024 - Feb 2025 (Internship Project)",
  [
    *Company*: Confidential Tech Company | *Team Size*: 8 | *Role*: Frontend Engineer
    
    • Engineered a drag-and-drop workflow designer using Vue.js for an RPA platform, simplifying process configuration for enterprise clients.
    • Developed a real-time monitoring dashboard with WebSockets to provide live updates on workflow execution status.
    • Implemented robust user authentication and multi-tenant isolation, enhancing platform security and scalability.
    • Optimized frontend performance, reducing initial page load time by 60% and significantly improving user experience.
    
    *Key Technologies*: Vue.js, JavaScript, WebSocket, Element UI, Echarts
  ]
)

#project_item(
  "Intelligent Data Analysis & Visualization System",
  "Sep 2023 - Jan 2024",
  [
    *Project Type*: Full-Stack Data-Driven Web Application
    
    • Built a data analysis platform from scratch using React and Node.js, supporting ingestion from multiple data sources.
    • Integrated machine learning algorithms to enable intelligent data analysis and predictive functionalities.
    • Developed interactive data visualization components with D3.js, allowing for custom charts and dynamic dashboards.
    • Engineered an automated reporting feature with scheduled delivery, improving data accessibility for stakeholders.
    
    *Key Technologies*: React, Node.js, Python, D3.js, MongoDB, Machine Learning
  ]
)

#project_item(
  "Reinforcement Learning for Autonomous Path Planning",
  "Sep 2023 - Jun 2024",
  [
    *Project Type*: Provincial Undergrad. Innovation Project | *Advisor*: Prof. Changpeng Wang
    
    • Researched and implemented a Deep Q-Network (DQN) based algorithm for intelligent agent path planning.
    • Constructed a multi-agent simulation environment to validate the algorithm's convergence and stability.
    • The research provides a foundational algorithm for hardware like drones and AGVs, showcasing strong AI and systems-thinking skills.
    
    *Key Technologies*: Python, Reinforcement Learning, Robotics Control, Algorithm Optimization
  ]
)

#v(1em)

#align(center)[
  #text(size: 9pt, style: "italic", fill: rgb("#3b82f6"))[
    "Passionate about building high-performance systems and intelligent applications."
  ]
]