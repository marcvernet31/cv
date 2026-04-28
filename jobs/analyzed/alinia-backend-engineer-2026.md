# Alinia — Back-End Engineer
**Date analyzed:** 2026-04-28
**Source:** pasted

## Role summary
Alinia builds AI safety and governance infrastructure for enterprise customers. The back-end engineer is a founding-team IC responsible for maintaining and scaling a Python/FastAPI backend, serving LLM inference endpoints cost-effectively, designing scalable REST APIs, managing cloud infrastructure, setting up CI/CD and observability, and supporting enterprise compliance (SOC 2, ISO 27001). CET timezone preferred; hybrid/remote OK.

## Must-have requirements
- 3+ years backend engineering on production systems
- Strong Python + FastAPI (or equivalent framework)
- RESTful APIs, PostgreSQL, Docker
- CI/CD, observability, incident debugging
- LLM inference pipeline integration experience
- Cloud platform experience (AWS, GCP, or Azure)
- Security, data privacy, and enterprise SaaS compliance mindset
- Clear cross-functional communicator

## Nice-to-have requirements
- LLM-serving infrastructure at scale
- IaC (Terraform, Pulumi) and Kubernetes
- SOC 2 / ISO 27001 direct audit experience
- 0→1 startup experience with high ownership
- DevOps mindset: build, monitor, fix, improve continuously

## ATS keywords to hit
- Python
- FastAPI
- PostgreSQL
- Docker
- RESTful APIs
- LLM inference
- LLM serving
- CI/CD
- observability / monitoring
- infrastructure-as-code
- cloud infrastructure / AWS / GCP / Azure
- microservices
- SOC 2 / ISO 27001
- enterprise SaaS
- security / data privacy

## Marc's fit assessment

**Strong match:**
- Python + FastAPI: Current primary stack at Enginy — direct hit
- LLM inference pipelines: Building RAG pipelines and LLM-powered features at Enginy; collaborated on LLM agentic tooling at Amazon
- PostgreSQL: Used at Enginy for async enrichment pipelines
- RESTful APIs and microservices: Core pattern across all Amazon services
- CI/CD + IaC: Built and owns CI/CD pipeline with AWS CDK (50% infra maintenance reduction at Amazon)
- Cloud (AWS): AWS Solutions Architect Associate certified; hands-on with CDK, Lambda, RDS, Redshift, CloudWatch
- Observability and reliability: ML-powered monitoring at Amazon BI; health checks reducing downtime 40% at Amazon SDE
- 0→1 startup: Enginy is a founding-team context with high ownership
- Redis / performance: 35% latency reduction via distributed caching at Amazon

**Partial match:**
- Docker: Listed in skills inventory but context not well-documented — confirm before interview
- Security / compliance (SOC 2, ISO 27001): No direct audit participation, but AWS SA cert covers cloud security fundamentals; general security awareness present
- LLM serving at scale: Enginy is early-stage; scale not yet production-proven at volume

**Gaps:**
- Kubernetes: No explicit experience documented
- Terraform / Pulumi: Has AWS CDK (IaC) but not these specific tools
- SOC 2 / ISO 27001 direct audit cycle involvement

## Recommended CV adjustments
- Start from `ai-founding-engineer.tex` as structural base
- Override title to `BACKEND ENGINEER`
- **Enginy section:** Lead with RAG/LLM bullet (fill in conservative 45% latency metric), keep async enrichment pipelines (PostgreSQL), keep CRM/third-party integrations (maps to vendor collaboration requirement)
- **Amazon SDE:** Lead with AI tooling (LLM credibility), then CI/CD/AWS CDK (DevOps), Redis (performance), health checks (reliability/observability). Drop network simulation and Java-Kotlin.
- **Amazon BI:** Keep ML monitoring (observability) + Lambda automation (Python/cloud ops)
- **URV:** 1 condensed bullet; trim if page is tight
- **Skills:** Lead Python, add FastAPI prominently, add Docker, add `infrastructure-as-code (AWS CDK)` phrasing, add LLM inference to AI/ML line
- Frame AWS CDK as IaC explicitly in skills (nice-to-have keyword)
