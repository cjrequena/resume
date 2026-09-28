# CARLOS JOSÉ REQUENA JIMÉNEZ

**Solutions Architect | Enterprise Architecture & Cloud Strategy**

Palma, Spain
[cjrequena@outlook.es](mailto:cjrequena@outlook.es) | +34 669 258 306
linkedin.com/in/cjrequena | github.com/cjrequena | cjrequena.com | medium.com/@cjrequena

---

# SUMMARY

Solutions Architect with 15+ years in enterprise environments, working across the full architectural stack — from event-driven distributed systems and multi-tenant platform design to AWS environments defined entirely as code across a multi-account organization. Equally comfortable setting the standard and writing the reference implementation: API contracts, messaging semantics, deployment topology, identity and authorization models, and the CI/CD pipelines that carry them to production.

**Core stack** — Java 21 / Spring Boot 3.5 • AWS (ECS Fargate, RDS PostgreSQL, MSK, Cognito) • Terraform • Apache Kafka • PostgreSQL • TypeScript / Next.js • GitLab CI • Event Sourcing / CQRS • Multi-Tenant SaaS

---

# PROFESSIONAL EXPERIENCE

## Solutions Architect — TUI

Jan 2017 – Present

* Defined architecture strategy for the global sourcing and integration platforms behind multi-regional travel operations, sizing for high-demand seasonal workloads and setting the scalability and resilience targets delivery teams build against — 99.99% uptime and a 40% improvement in peak-load scalability across business-critical services
* Led the decomposition of a monolithic booking platform into a set of independently deployable, reactive Java/Spring Boot services with event-driven integration — service boundaries, ownership model, deployment topology, and automated release paths — cutting deployment time by 60% and improving delivery throughput, while consolidating over a dozen regional brand storefronts onto a single whitelabel frontend
* Established asynchronous messaging standards on Kafka and SNS/SQS — event contracts, consumer isolation, failure handling, and replay — removing synchronous coupling between domains and containing the blast radius of downstream outages; applied this to federate real-time availability search across multiple external and internal suppliers, streaming results to clients as they arrive rather than blocking on the slowest supplier
* Introduced CQRS as the persistence model for the ancillary booking-lifecycle domain — an independently scaled command service handling writes and a query service serving reads from a document store, with domain events typed and versioned through a dedicated schema registry and AsyncAPI contracts — letting read and write paths scale independently while keeping downstream consumers aligned on event shape across versions
* Owned architecture governance adopted across multiple global teams: design reviews, security and development standards, reusable integration patterns, and versioned REST contracts with backward-compatibility rules that let consuming teams evolve independently of provider release cycles — with the application landscape and its dependencies tracked in LeanIX
* Defined the API gateway strategy for externally consumed services on Apigee — OAuth2 token verification and CORS policy standardized across the proxy layer so internal services never expose public endpoints directly — and led the phased migration of the proxy estate from Apigee Edge to Apigee X across test, pre-prod, and production for consumers spanning partner integrations and the mobile app team
* Influenced technical direction across Product, Engineering, Security, and DevOps, translating enterprise strategy into concrete platform decisions and making their operational and security implications explicit to non-technical stakeholders
* Mentored engineers and architects through design reviews, pairing on architectural decisions, and written guidance

*Java 17/21 · Spring Boot 3.x (WebFlux) · AWS ECS Fargate · RDS PostgreSQL · DocumentDB · MSK / Apache Kafka · SNS/SQS · Cognito · Apigee (Edge → X migration) · Terraform · GitLab CI · REST APIs · LeanIX*

---

## Application Architect — Hotelbeds

Sep 2015 – Jan 2017

* Designed and scaled backend services processing millions of daily transactions across high-availability travel distribution platforms — sized for peak distribution load, disaster recovery, and data-integrity guarantees
* Led modernization of legacy systems into modular microservices — service decomposition, data ownership, and integration contracts — across the core travel distribution platform
* Improved platform performance by up to 30% by targeting structural bottlenecks — call topology, data access paths, and caching strategy — rather than isolated code tuning

*Java · Spring · REST APIs · High Availability*

---

# SELECTED WORK

**Jaspe** — multi-tenant SaaS booking and business-management platform for service businesses · jaspe.io
*Personal platform project: end-to-end reference implementation — seven-service backend, three Next.js frontends, and AWS infrastructure as Terraform.*

* Architected a seven-service backend across three deliberate styles chosen per bounded context — Hexagonal (business, customer), CQRS + Event Sourcing (booking command/query handlers, backed by a custom event-store library published as a versioned artifact to a private Maven registry), and Layered (auth, payment, notification) — integrated via synchronous REST and CloudEvents-typed Kafka events with per-consumer DLQs and replay
* Enforced correctness in PostgreSQL rather than application code: GiST exclusion constraints over `daterange` / `tstzrange` (with `btree_gist` for UUID/enum equality) make overlapping location hours, staff schedules, and asset bookings unrepresentable, alongside Row-Level Security tenant isolation rolled out across every service and pinned with per-service regression tests
* Owned the identity and authorization boundary end-to-end: Cognito User Pool with three Lambda triggers (post-confirmation provisioning, pre-token-generation claim enrichment, pre-signup federation), a Cognito JWT authorizer at the API Gateway edge, and claim-based method authorization inside each service
* Defined the delivery topology as Terraform (API Gateway → VPC Link → internal ALB → ECS Fargate, multi-account, `eu-west-1`) shipped through GitLab CI parent/child pipelines gated on per-service change detection, and delivered three Next.js frontends (business, platform-admin, patient-facing) sharing one backend through a Stripe Connect payment integration
* Directed the majority of implementation through Claude Code and Kiro as AI coding agents rather than hand-writing it — authoring the machine-readable architecture contracts (workflow, model-routing, naming/wire-format, git conventions) that let agents work correctly without step-by-step supervision, plus Kiro hooks that auto-detect architecture-documentation drift on every commit — with over half of all commits across the platform AI-co-authored and every agent-produced change reviewed against the reference architecture before merge

*Java 21 · Spring Boot 3.5 · PostgreSQL (RLS, GiST) · Apache Kafka (CloudEvents) · AWS (ECS Fargate, API Gateway, Cognito, Lambda) · Terraform · Next.js / TypeScript · Stripe Connect · GitLab CI · Hexagonal · CQRS / Event Sourcing · Multi-Tenant SaaS · Claude Code / Kiro (AI-Agent-Directed Engineering)*

---

# TECHNICAL EXPERTISE

### Architecture & Design

Microservices • Hexagonal Architecture (Ports & Adapters) • CQRS • Event Sourcing • Domain-Driven Design • Event-Driven Architecture • API-First & Versioned REST Design • Multi-Tenancy & Tenant Isolation • Saga / Compensating Transactions • Idempotency & Optimistic Concurrency • High Availability, Resilience & Graceful Degradation

### AWS, Infrastructure & Delivery

ECS Fargate • API Gateway • Lambda • RDS PostgreSQL & RDS Proxy • ElastiCache Redis • MSK / Managed Kafka • Cognito (OIDC/JWT, custom claims, M2M client credentials) • S3 • Secrets Manager • CloudWatch • VPC & Network Segmentation • ALB & Auto Scaling • Organizations, SCPs & IAM Identity Center • Multi-Account Landing Zones • Terraform (reusable modules, thin per-environment root stacks, remote-state composition) • Docker • Ansible • GitLab CI (parent/child pipelines, path-based gating, DAG orchestration) • OIDC Keyless Cloud Authentication • Promotion Gates & Trunk-Based Development

### Engineering, Data & Security

Java 21 • Spring Boot 3.5 (Cloud Stream, Security / OAuth2 Resource Server, Data JPA) • Python • TypeScript • Next.js (App Router, SSR / RSC) • React • OpenAPI • Micrometer & Distributed Tracing • PostgreSQL (Row-Level Security, GiST exclusion constraints, PostGIS, transaction-scoped tenant context) • Event Store Design (append-only log, snapshots, durable subscription offsets) • Apache Kafka • CloudEvents • Dead-Letter Queues & Replay • Flyway • OAuth 2.0 / OIDC • RBAC & Claim-Based Authorization • Least-Privilege IAM • GDPR / EU Regulatory Assessment • JUnit 5 • Mockito • Testcontainers • Property-Based Testing • Playwright • Locust • SonarQube • arc42, C4, Mermaid

### AI-Assisted & Agentic Engineering

Claude Code (agent-instruction contracts, custom skills, slash-command scaffolds, sub-agent model routing) • Kiro (spec/hook-driven agents, automated architecture-doc-coherence enforcement) • LLM-Based Pair Programming & Code Review • Prompt/Role Engineering for Domain-Specific AI Agents • Agentic Workflow Governance (plan-then-execute, human-in-the-loop review) • Multi-Repo AI-Directed Delivery at Scale

---

# EARLIER EXPERIENCE

**Application Architect** — Onwhyon · Nov 2014 – Jun 2015
Lead architect for Bankia Indicex, a public website-maturity scoring platform: crawler-based extraction feeding parallel enrichment against ~10 third-party APIs (Java, Spring 4, AngularJS, MySQL).

**Software Architect** — Trentisa · Apr 2010 – Nov 2014
Architecture for enterprise banking and SEPA platforms — direct debit, mandates, receipts and transfers — for clients including Bank of Santander and LeasePlan; high-throughput financial data processing with reconciliation and data-integrity constraints under regulatory requirements.

**Software Developer** — Virtual Desk · Sep 2009 – Apr 2010
Distributed architecture solutions, technology selection, and code reviews (ZKOSS, Spring 2.5, Hibernate/JPA, Oracle 10g).

**Software Developer** — Everis Spain · Jan 2009 – Sep 2009
Java application architecture, SOA, Liferay portlets, and data modelling, migration, and warehousing.

**Software Developer** — OLTP Voice, Caracas · Jan 2008 – Jan 2009
Middleware for Movistar post-paid transaction and account activation systems.

**Software Developer** — Imolko, Caracas · Jan 2006 – Jan 2008
Web and business components for SMS-based platforms (Java, Web Services / SOA, SMPP).

---

# EDUCATION

**MBA, Master in Business Administration** — EUDE Business School · 2010 – 2011
Business strategy, finance, general management, project management, and operations management.

**Electronic Engineer** — UNEXPO, Universidad Nacional Experimental Politécnica Antonio José de Sucre · Mar 2005 – Mar 2009
Telecommunications, digital electronics, computing, industrial controls, and signal processing.

---

# CERTIFICATIONS & TRAINING

* Advanced Architecting on AWS — CAPSIDE, 2018 (48h)
* Expert Scrum Master Certified — European Scrum, 2015

---

# LANGUAGES

Spanish — Native
English — Full Professional Proficiency
