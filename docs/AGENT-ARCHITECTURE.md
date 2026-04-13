# Agent Architecture

Serena is a multi-agent AI system built on OpenClaw.

## Agents

| Agent | ID | Workspace |
|-------|----|-----------|
| **Serena** | main | workspace-main |
| **Face** | face | workspace-face |
| **Face Content** | face-content | workspace-face-content |
| **Face Post** | face-post | workspace-face-post |
| **Insta** | insta | workspace-insta |
| **Insta Content** | insta-content | workspace-insta-content |
| **Insta Post** | insta-post | workspace-insta-post |
| **Link** | link | workspace-link |
| **Link Content** | link-content | workspace-link-content |
| **Link Post** | link-post | workspace-link-post |
| **Exs** | exs | workspace-exs |
| **Exs Content** | exs-content | workspace-exs-content |
| **Exs Post** | exs-post | workspace-exs-post |
| **Copywriter** | copywriter | workspace-copywriter |

## Delegation

Serena (main) delegates to: face, insta, link, exs, copywriter

## Configuration

- State dir: `/opt/.openclaw-soc`
- Config: `/opt/.openclaw-soc/openclaw.json`
- Gateway port: 19089
- Model: deepseek/deepseek-chat (fallback: google/gemini-2.5-flash)

## Workspace Structure

Each agent workspace follows:

```
workspace-{agent}/
  IDENTITY.md      -- Name, role
  SOUL.md          -- Voice and output rules
  USER.md          -- Owner context
  TOOLS.md         -- Available tools
  SKILLS.md        -- Skill index
  SKILL-*.md       -- Specific workflows
```
