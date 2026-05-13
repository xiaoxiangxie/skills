---
name: skills-collection
description: "The full skills collection for OpenClaw / Claude Code. Run the setup script to install all 140 skills. Usage: say 'install all skills', 'setup skills', '安装所有技能', or give the GitHub URL https://github.com/xiaoxiangxie/skills"
user_invocable: true
version: "1.0.0"
---

# Skills Collection — 技能全家桶

共 140 个 skills，覆盖内容创作、AI 作图、编程开发、飞书工具、视频动画、效率工具、研究分析等场景。

## 安装方式

### 方式一：直接 clone（推荐）

```bash
git clone https://github.com/xiaoxiangxie/skills.git ~/.agents/skills
```

> 直接 clone 到 `~/.agents/skills`，跳过 setup.sh，所有 skills 即刻可用。

### 方式二：clone 后跑 setup

```bash
git clone https://github.com/xiaoxiangxie/skills.git ~/Documents/GitHub/skills-repo
bash ~/Documents/GitHub/skills-repo/setup.sh
```

setup.sh 会把所有 skills 复制到 `~/.agents/skills/`，并清理嵌入的 git 数据。

### 方式三：让 AI agent 自动执行

告诉你的 AI agent：

```
从 https://github.com/xiaoxiangxie/skills 安装所有 skills 到 ~/.agents/skills/
```

或直接把这个仓库的链接丢给它即可。

## 目录结构

```
skills/
├── setup.sh              # 安装脚本
├── README.md             # 本文件
├── ljg-*                 # 内容创作类 (21个)
├── baoyu-*               # AI 作图/效率类 (24个)
├── lark-*                # 飞书工具类 (23个)
├── dbs-*                 # 商业/研究分析类 (18个)
├── hyperframes/          # 视频动画类 (7个)
├── remotion*/            # 视频创建 (3个)
├── frontend*/           # 编程开发类 (8个)
├── yao-*                 # 决策/商业工具 (5个)
├── minimax-*            # 文档处理类 (4个)
└── ...                   # 剩余技能
```

## 可直接调用的 skills（⌘ 标记）

| Skill | 版本 | 说明 |
|-------|------|------|
| ljg-card | 2.3.0 | 内容 → PNG 可视化 |
| ljg-paper | 4.9.0 | 论文阅读 |
| ljg-paper-flow | 1.0.2 | 论文 + 卡片一体化 |
| ljg-paper-river | 1.0.0 | 论文倒读法 |
| ljg-plain | 5.0.0 | 认知原子：白 |
| ljg-present | 3.0.0 | 演讲铸造 |
| ljg-push | - | 同步 ljg-* 到 GitHub |
| ljg-qa | - | 信息提问机 |
| ljg-rank | - | 领域力分析 |
| ljg-read | 1.0.0 | 阅读伴侣 |
| ljg-skill-map | 1.0.0 | 技能地图 |
| ljg-think | - | 追本之箭 |
| ljg-travel | 1.0.0 | 博物馆研究 |
| ljg-word | 1.0.1 | 英语单词深钻 |
| ljg-word-flow | 1.0.1 | 单词 + 信息图 |
| ljg-writes | 6.3.0 | 写作引擎 |
| ljg-x-download | 1.1.0 | X 媒体下载 |
| lark-doc | 2.0.0 | 飞书云文档 |
| lark-base | 1.2.0 | 飞书多维表格 |
| lark-sheets | 1.1.0 | 飞书表格 |
| lark-calendar | 1.0.0 | 飞书日历 |
| lark-task | 1.0.0 | 飞书任务 |
| lark-im | 1.0.0 | 飞书消息 |

> 其他 skills 仍可通过描述触发，不支持 `/skill-name` 直接调用。

## 分类概览

| 分类 | 数量 | 代表 skill |
|------|------|-----------|
| 内容创作 | 21 | ljg-writes, ljg-paper, ljg-plain |
| 飞书工具 | 23 | lark-doc, lark-base, lark-calendar |
| 研究分析 | 26 | dbs-diagnosis, dbs-benchmark, yao-business |
| AI 作图 | 12 | baoyu-imagine, baoyu-image-cards |
| 视频动画 | 14 | hyperframes, remotion-video, note-slides |
| 效率工具 | 17 | baoyu-url-to-markdown, tavily |
| 编程开发 | 14 | vibe-dev, frontend-dev, shader-dev |
| 知识管理 | 4 | minimax-docx, minimax-pdf |
| 系统运维 | 2 | github, gsap |
| 其他 | 7 | baoyu-markdown-to-html, vision-analysis |