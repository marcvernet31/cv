# GeminAI DX — Founding AI Engineer (LLMs + Backend)
**Date analyzed:** 2026-04-17
**Source:** pasted

## Role summary
Early-stage healthcare AI startup (~$2M raised) building an AI orchestration platform for clinical decision support. The founding engineer role owns 0→1 MVP delivery for an oncology product, backend architecture, and LLM pipeline development (RAG, document understanding, information extraction). Strong CTO-track potential. Stack preference is Python/FastAPI. Works directly with clinicians, founders, and hospital partners.

## Must-have requirements
- 5+ years software engineering
- Strong Python backend (FastAPI preferred)
- Production systems experience (not just prototypes)
- LLM experience: OpenAI / Anthropic / open-source models
- Prompt engineering + RAG pipelines
- Information extraction from complex documents
- REST APIs, data pipelines, microservice architecture
- Cloud deployment: AWS / GCP / Azure
- GDPR / HIPAA awareness (current data is anonymised; future integrations require compliance)

## Nice-to-have requirements
- Healthcare / clinical data (FHIR, HL7, medical data standards)
- Vector databases (Pinecone, Weaviate, FAISS)
- Exposure to regulated environments (finance, health)
- Frontend / dashboard tools (Streamlit, React)

## ATS keywords to hit
- LLM, RAG pipeline, prompt engineering
- FastAPI, Python
- Clinical document understanding, information extraction, information structuring
- OpenAI, Anthropic, Llama, Mistral
- REST API, microservices, data pipelines
- AWS, cloud deployment
- GDPR, HIPAA, data privacy
- Agentic AI, agentic pipelines
- Vector database (if applicable)
- Healthcare AI, clinical AI (even if only as context)

## Marc's fit assessment

**Strong match:**
- Backend engineering at production scale (Amazon: millions of packages/day, distributed microservices)
- AI/ML engineering: agentic AI tooling at Amazon (Rust), ML-powered monitoring (Amazon BI), published ML research (URV)
- Data pipelines and information extraction: Enginy async enrichment pipelines from 10+ external sources, Amazon BI automation
- Python: used across Amazon BI (Lambda, scripting), URV research, Enginy pipelines
- AWS: CDK, Lambda, Redshift, RDS, CloudWatch — certified (Solutions Architect Associate)
- REST APIs and microservices: core architecture at Amazon
- React: built monitoring UI at Amazon BI — covers the "Streamlit/React" bonus
- 0→1 founding context: Enginy is an early-stage role with high ownership and no structured environment

**Partial match:**
- LLM depth: confirmed involvement in agentic AI tooling at Amazon, but depth of LLM API usage (prompt engineering, RAG) is not fully surfaced on the current CV — needs to be brought forward explicitly
- Python as primary language: historically Kotlin-first at Amazon; Python is real but secondary. At Enginy, Node.js/TypeScript is primary. **Clarify: does current Enginy work involve Python AI/LLM pipelines?**
- Years of experience: depends on how you count (2021 research → 2026 = 5 years, but professional SDE from 2022 = ~4 years). The JD says "5–8 sweet spot" — borderline, present confidently.

**Gaps:**
- FastAPI: not confirmed in skills inventory — **verify before listing on CV**
- RAG pipelines: not explicitly built — **verify; if yes at Enginy (it's an AI company), surface it**
- Healthcare / FHIR / HL7: zero exposure — be honest, not a dealbreaker for this role given the startup stage
- Vector databases: not confirmed — **verify if used at Enginy**

## Recommended CV adjustments

**Variant to create:** `variants/ai-founding-engineer.tex`

**Header title override:** `AI ENGINEER` (more ATS-friendly than "Software Engineer" for this role)

**Bullet selections and reordering:**

Enginy (3 bullets — keep all, they map well):
- Bullet 2 (async enrichment pipelines, 10+ sources) → most relevant, maps to clinical data integration
- Bullet 1 (Chrome Extension / information extraction) → shows document/data extraction skills
- Bullet 3 (CRM/API integrations) → shows third-party integration depth

Amazon SDE (4 bullets — promote AI tooling to #1):
1. **Agentic AI tooling (Rust)** → moved to first, rewrite to make LLM connection explicit
2. Network simulation / $3.5M cost reduction → demonstrates scale and systems design
3. Redis caching (35% latency) → shows backend depth
4. CI/CD with AWS CDK → shows cloud deployment ownership

Amazon BI (2 bullets):
1. ML-powered monitoring (time-series, anomaly detection) → strongest ML signal
2. AWS Lambda + Python automation → hits Python + cloud keywords

URV (2 bullets — keep both):
1. ML predictive models (ensemble methods) → ML foundation
2. Published research → technical credibility

**Skills section rewrite (inline in variant, not \input{content/skills}):**
- Languages: Python first, then TypeScript, Kotlin, Rust, Java, SQL
- Add `\textbf{AI / LLM:}` row: LLM integration (OpenAI / Anthropic APIs), agentic AI pipelines, prompt engineering, ML (time-series forecasting, anomaly detection, ensemble methods)
- Frameworks: FastAPI (⚠️ confirm), React, Node.js, SpringBoot, scikit-learn
- Technologies: RESTful APIs, microservices, PostgreSQL, Redis, Docker (⚠️ confirm Docker)
- Cloud: AWS CDK, AWS Lambda, AWS Redshift, CloudWatch, serverless — AWS Solutions Architect (certified)
- Engineering: System Design, CI/CD, DevOps, TDD, Agile/Scrum

**New bullets to draft (optional, only if Marc confirms the experience exists):**
- If Marc has built RAG pipelines at Enginy: add bullet to Enginy about RAG / LLM pipeline for [use case]
- If Marc uses FastAPI: add it explicitly to skills and consider a bullet around API design

**Tone note:** This is a founding role — lean into ownership language: "designed and implemented", "owned", "architected". Avoid "collaborated in" for solo or lead work.
