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

## The Agent Designer

Deliberon's **Agent Designer** lets you build your own council members from the ground up — no code, no templates. It is one of the most powerful tools in the product and exists nowhere else.

Each custom agent is defined across the dimensions that actually shape how it reasons in a council:

- **Persona** — voice, style, values, and disposition
- **Vocation** — domain expertise and the deliberation role it fills
- **Operational Posture** — how it behaves under insufficient evidence: what advances, what doesn't, and who bears the burden of proof
- **Council Role** — its archetype (challenger, builder, synthesizer, gatekeeper), when to activate it, and which agents it pairs with
- **Speaking Position** — Contributor, Primer, or Challenger — controlling *when* it speaks in dialectical rounds (e.g. Hegelian Thesis → Antithesis → Synthesis)
- **Conversational Mode & handoffs** — a behavioural directive defining what the agent is and is not, with a graceful handoff to a named counterpart when it reaches its limit
- **Teaching Persona** — how it explains and instructs

And it gives every agent a face and a voice:

- **Voice profile** — an AI-generated, fully editable VoxCPM2 voice tuned by tone, age, energy, accent, and gender, with one-click in-app preview
- **Voice cloning** — or use *your own* voice
- **Avatar portrait** — a generated character portrait shown on the agent's sidebar card
- **Share to the Community Gallery** — publish your agent for others to use

---

## Key Features

- **27 built-in Council Modes** (plugins can register more) — across decision-making (Feasibility Study, Jury Verdict, Tradeoff Analysis, Consensus Review), engineering (Architecture Review, Scope Trim, QC Gate, Sprint Planning), analysis (Red Team, Assumption Audit, Root Cause Analysis, Knowledge Audit), creative (Brainstorm, Critique, The Pitch), governance (Proposal Vote, Mediation, Vision Check), and documentation (Document Assembly, Research Synthesis)
- **Hegelian Dialectic mode** — a three-round Thesis → Antithesis → Synthesis structure for high-stakes truth-seeking, with the Adversary leading a dedicated challenge round
- **Conversational modes** — Round Table, Podcast, and Interview turn the council into a listenable, voiced discussion rather than a verdict engine
- **Council Attestation** — every session produces a cryptographically signed (per-seat ECDSA P-256) attestation package; the gold 🔐 badge deposits a verifiable session record you can export as JSON or Markdown
- **The Agent Designer** — build, voice, and deploy fully custom council agents (see above)
- **Native local models** — browse and download GGUF models directly from Hugging Face *inside* Deliberon, then run them locally — no separate tooling required
- **The Library** — a built-in knowledge system that grounds agents in your own source material
- **Project-scoped conventions** — sessions and agent rosters are linked to projects, with full history and Decision Record export; agents never bleed between projects
- **MCP Server** — AI orchestrators (Claude Code and compatible tools) can drive Deliberon programmatically via 200+ tools
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
| **Hugging Face (GGUF)** | Local — search and download models in-app, then run them locally |

Additional cloud endpoints, including Google Gemini, are supported. No lock-in — use the best model for each role.

---

## Who Is Deliberon For?

### Founders & Entrepreneurs
Making high-stakes product and strategy calls with limited time, capital, and advisors? Deliberon gives you a council. Stress-test your business model, evaluate a market opportunity, weigh a strategic pivot — get structured multi-perspective analysis in minutes instead of booking a boardroom.

### Content Creators
Deliberon is rapidly becoming a content-creation engine. Spin up a cast of voiced, distinct AI personalities and put them in a **Podcast**, **Interview**, or **Round Table** — each producing a listenable, fully voiced transcript. Generate sourced white papers and reports with **Research Synthesis**, assemble long-form documents with multiple authors via **Document Assembly**, and give every character its own face, voice, and personality in the Agent Designer. Scripts, episodes, panels, and articles — produced by a council, not a single prompt.

### Business Owners
Tired of AI tools that confidently tell you what you want to hear? Deliberon is built specifically to surface the best *counter-argument* to your preferred position before you commit to it. Every Decision Record is auditable and shareable.

### Start-Ups
Before you commit engineering time, funding, or team capacity to a direction, put it to the council. Red Team mode sends a dedicated adversarial agent after your plan. Feasibility Study mode pressure-tests assumptions. Architecture Review mode stress-tests technical decisions. All before a single line of code is written.

### Teams & Decision Makers
Want decisions with a paper trail? Every Deliberon session produces a signed Decision Record that captures the deliberation, the dissent, and the reasoning — not just the conclusion. Share it. Revisit it. Defend it.

---

## System Requirements

- Windows 10 or Windows 11 (64-bit)
- .NET 8 Desktop Runtime (bundled in the installer)
- An API key for at least one supported AI provider, *or* a local model (Ollama, LM Studio, or a GGUF model downloaded in-app)

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

## Coming Soon

A library of professional vocational specialist plugins — **CODEA.I.** — will be made available soon.

---

## About

Deliberon is a solo developer project in active development. The current release targets Windows and supports all major cloud and local AI providers.

Feedback and bug reports are welcome.

---

*This is Intelligence. Orchestrated Intelligently.*
