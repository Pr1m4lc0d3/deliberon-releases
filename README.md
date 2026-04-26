# Deliberon

**Multi-Agent AI Deliberation Council for Windows**

> *This is Intelligence. Orchestrated Intelligently.*

---

## The Problem With Single-AI Responses

Single-AI responses are designed to sound confident and agreeable. They hallucinate. They tell you what you want to hear. They collapse under serious cross-examination. When the stakes are real — a business decision, a product strategy, a market analysis, a strategic pivot — one confident AI answer is not enough.

**Deliberon is built on a different premise: structured disagreement produces better answers than polished agreement.**

---

## What Is Deliberon?

Deliberon convenes a **structured council of specialised AI agents** to deliberate on your question. Each agent has a defined role, a distinct reasoning profile, and the mandate to challenge — not just agree. Agents read each other's arguments, push back with evidence, and a dedicated Critic attacks the council's own emerging consensus.

The result is a formal **Decision Record**: the strongest arguments for and against, dissenting views preserved, and a traceable final recommendation.

---

## How It Works

1. **Submit your topic** — a question, decision, or problem you need rigorous analysis on
2. **The council deliberates** — agents form independent positions, then challenge each other across multiple rounds
3. **Sycophancy is detected and blocked** — agents cannot simply agree; they must justify with evidence
4. **Minority dissent is protected** — the Gemini Principle prevents valid minority positions from being suppressed by consensus pressure
5. **The Critic attacks** — a dedicated adversarial agent challenges the council's emerging recommendation
6. **You receive a Decision Record** — a structured, exportable Markdown document with full deliberation history

---

## Key Features

- **19 Council Modes** — Brainstorm, Red Team, Critique, Feasibility Study, Jury Verdict, Architecture Review, Root Cause Analysis, Incident Triage, Tradeoff Analysis, Sprint Planning, and more
- **Specialist Designer Studio** — create and deploy custom AI agents with tailored expertise profiles and deliberation roles
- **Project-Scoped Sessions** — council sessions are linked to projects, with full history and Decision Record export
- **Sycophancy Detection** — agents are required to provide evidence when agreeing; hollow consensus is flagged
- **Hallucination Cross-Check** — claims are cross-checked before second-round reasoning proceeds
- **MCP Server** — AI orchestrators (Claude Code and compatible tools) can drive Deliberon programmatically via 100+ tools
- **Provider Agnostic** — each agent can use a different AI provider; mix cloud and local freely

---

## Supported AI Providers

Each specialist in the council can be independently configured:

| Provider | Notes |
|----------|-------|
| **Claude** (Anthropic) | Cloud — all models supported |
| **OpenAI-compatible APIs** | Cloud — any provider with an OpenAI-compatible endpoint |
| **Ollama** | Local — any model you have pulled |
| **LM Studio** | Local — any loaded model |

No lock-in. Use the best model for each role.

---

## Who Is Deliberon For?

### Founders & Entrepreneurs
Making high-stakes product and strategy calls with limited time, capital, and advisors? Deliberon gives you a council. Stress-test your business model, evaluate a market opportunity, weigh a strategic pivot — get structured multi-perspective analysis in minutes instead of booking a boardroom.

### Business Owners
Tired of AI tools that confidently tell you what you want to hear? Deliberon is built specifically to surface the best *counter-argument* to your preferred position before you commit to it. Every Decision Record is auditable and shareable.

### Start-Ups
Before you commit engineering time, funding, or team capacity to a direction, put it to the council. Red Team mode sends a dedicated adversarial agent after your plan. Feasibility Study mode pressure-tests assumptions. Architecture Review mode stress-tests technical decisions. All before a single line of code is written.

### Teams & Decision Makers
Want decisions with a paper trail? Every Deliberon session produces a Decision Record that captures the deliberation, the dissent, and the reasoning — not just the conclusion. Share it. Revisit it. Defend it.

---

## System Requirements

- Windows 10 or Windows 11 (64-bit)
- .NET 8 Desktop Runtime (bundled in the installer)
- An API key for at least one supported AI provider, *or* Ollama/LM Studio running locally

---

## Installation

1. Download the latest installer from the [Releases](https://github.com/Pr1m4lc0d3/deliberon-releases/releases) page
2. Run `Deliberon_Setup_v1.*.exe`
3. Follow the setup wizard (installs .NET 8 automatically if not present)
4. Launch Deliberon and configure your first AI provider

---

## Releases

All releases are published on the [Releases](https://github.com/Pr1m4lc0d3/deliberon-releases/releases) page. Each release includes:
- A standalone Windows installer (`.exe`)
- A zipped copy of the installer (`.zip`)
- Full version notes describing what changed

---

## About

Deliberon is a solo developer project in active development. The current release targets Windows and supports all major cloud and local AI providers.

Feedback and bug reports are welcome.

---

*This is Intelligence. Orchestrated Intelligently.*
