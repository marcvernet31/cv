# CV Workshop — CLAUDE.md

Claude Code instructions for the multi-variant CV system.

---

## What this repo is

A LaTeX-based, multi-variant CV system for Marc Vernet. The goal is to maintain one source of truth for all experience and skills content, then assemble targeted variants for specific roles and companies. Claude assists with tailoring content, analyzing job postings, and generating new variants.

---

## Repository layout

```
base/               Shared LaTeX — preamble (packages/macros/colors) and header (contact info)
content/            Content library — one file per role/section. Full bullet pools.
  experience/         amazon-sde.tex, amazon-bi.tex, urv-research.tex
  skills.tex, certifications.tex, education.tex
variants/           One .tex file per CV variant. Each variant assembles from base/ and content/.
  sde-general.tex     The default general-purpose SWE CV
  _template.tex       Scaffold for creating new variants
knowledge/          Claude's knowledge base about Marc (fill these in over time)
  about-me.md, full-experience.md, projects.md, skills-inventory.md
jobs/               Job posting analyses (create with prompts/analyze-job.md workflow)
scripts/            Build automation
  build.sh            Build one variant
  build-all.sh        Build all variants
dist/               Output PDFs (git-ignored)
```

---

## How to build

```bash
# Build a specific variant
./scripts/build.sh sde-general          # → dist/sde-general.pdf

# Build all variants
./scripts/build-all.sh
```

Requires `pdflatex` on PATH (installed via MacTeX on macOS).

---

## How to create a new variant

1. Copy `variants/_template.tex` → `variants/<role>-<emphasis>.tex`
2. Naming convention: `sde-backend`, `sde-ml`, `sde-startup`, `pm-technical`
3. Decide which content files to `\input` vs. inline bullet subsets
4. Adjust the skills block order/content to match the target role
5. Build and review: `./scripts/build.sh <variant-name>`

> **Note on paths:** All `\input{}` calls use paths relative to the repo root (e.g., `\input{base/preamble}`, `\input{content/experience/amazon-sde}`). The build script always runs pdflatex from the repo root so these resolve correctly.

---

## CV authoring rules

Follow these rules strictly when writing or rewriting bullets:

### 1. Lead with the metric
Always put the quantified outcome first, then the method.
- **Bad:** "Implemented Redis caching that improved latency"
- **Good:** "Reduced system latency by 35% by implementing distributed caching layer using Redis..."

### 2. Every bullet needs a number
%, $, count, or time. No exceptions. If no number exists, ask Marc or estimate conservatively.

### 3. Bold key technologies
Wrap technology names in `\textbf{}` — Kotlin, React, AWS CDK, Redis, etc.
Frameworks, languages, and cloud services all qualify. Generic concepts (microservices, CI/CD) can be bolded when they are the focal point of the bullet.

### 4. One sentence per bullet
Dense, tight prose. A bullet should not exceed ~3 lines of text when rendered at 10pt.

### 5. Active verbs only
Lead verb must be past tense and active: Reduced, Improved, Designed, Built, Orchestrated, Eliminated, Delivered, Implemented, Developed, Enabled.
Never: "was responsible for", "helped", "assisted", "worked on", "contributed to" (unless co-authoring a publication).

### 6. ATS keyword hygiene
- Spell out acronyms the first time they appear per variant
- Include both the technology name and its category where relevant ("AWS Lambda" not just "Lambda")
- Match exact terms from the target job posting when possible

### 7. One page only
If content overflows, cut bullets — do not adjust font size or margins.
Allocation guideline: most recent role 5-7 bullets, prior roles 2-4 bullets.

---

## Knowledge base

Always read relevant knowledge files before generating or editing content:

| File | Use when... |
|------|-------------|
| `knowledge/about-me.md` | Setting tone, choosing what to emphasize, understanding Marc's goals |
| `knowledge/full-experience.md` | Writing or rewriting bullets — has context that isn't on the CV |
| `knowledge/skills-inventory.md` | Tailoring the skills section, checking which technologies were actually used |
| `knowledge/projects.md` | Variants for roles where a portfolio or OSS presence matters |

---

## Job analysis workflow

When given a job posting, create `jobs/analyzed/<company>-<role>-<year>.md` using this structure:

```markdown
# [Company] — [Role Title]
**Date analyzed:** YYYY-MM-DD
**Source:** [URL or "pasted"]

## Role summary
One paragraph on what this role actually does.

## Must-have requirements
- ...

## Nice-to-have requirements
- ...

## ATS keywords to hit
List exact strings from the JD that should appear in the CV.

## Marc's fit assessment
Strong match: ...
Partial match: ...
Gaps: ...

## Recommended CV adjustments
- Which variant to start from
- Which bullets to promote, demote, or rewrite
- Skills section reordering
- Any new bullets to draft (with suggested content)
```

---

## Style notes

- The CV uses a dark gray / dark blue color scheme. Do not suggest color changes unless asked.
- The layout is intentionally minimal — no icons, no progress bars, no columns.
- LaTeX source is the single source of truth. Do not suggest converting to Word/Notion/etc.
