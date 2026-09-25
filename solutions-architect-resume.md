# CARLOS JOSÉ REQUENA JIMÉNEZ

**Solutions Architect | Enterprise Architecture & Cloud Strategy**

Palma, Spain
[cjrequena@outlook.es](mailto:cjrequena@outlook.es) | +34 669 258 306
linkedin.com/in/cjrequena | github.com/cjrequena | cjrequena.com | medium.com/@cjrequena

---

# SUMMARY

Solutions Architect with 15+ years in enterprise environments, hands-on across the full architectural stack: event-driven and event-sourced distributed systems, CQRS and hexagonal service design, multi-tenant SaaS platforms with database-enforced tenant isolation, and AWS environments defined entirely as code across a multi-account organization. Equally comfortable setting the standard and writing the reference implementation — API contracts, messaging semantics, deployment topology, identity and authorization models, and the CI/CD pipelines that carry them to production.

**Core stack** — Java 21 / Spring Boot 3.5 • AWS (ECS Fargate, RDS PostgreSQL, MSK, Cognito) • Terraform • Apache Kafka • PostgreSQL • TypeScript / Next.js • GitLab CI • Event Sourcing / CQRS • Multi-Tenant SaaS

---

# PROFESSIONAL EXPERIENCE

## Solutions Architect — TUI

Jan 2017 – Present

*Define architecture strategy for global sourcing and integration platforms, own the reference architecture and reference implementation needed to sustain the business, and evolve software development standards, security standards and process improvement efforts — with a focus on new and innovative technologies. Lead the evolution of enterprise and domain-level architectures, ensuring alignment with business objectives, scalability, and performance goals.*

* Defined architecture strategy for global sourcing and integration platforms supporting multi-regional travel operations, sizing the platform for high-demand seasonal workloads and setting the scalability and resilience targets the delivery teams build against
* Led the decomposition of monolithic applications into AWS-native microservices with event-driven integration — defining service boundaries, ownership model, deployment topology, and automated release paths — reducing deployment time by 60% and improving engineering delivery throughput
* Architected high-availability distributed systems achieving 99.99% uptime and improving peak-load scalability by 40% across business-critical services
* Established architecture governance practices — design reviews, architecture standards, reusable integration patterns, and engineering best practices — adopted across multiple global teams
* Influenced technical direction across Product, Engineering, Security, and DevOps organizations, translating enterprise strategy into concrete platform decisions and making the operational and security implications of those decisions explicit to non-technical stakeholders
* Established asynchronous messaging standards on Kafka and SNS/SQS — event contracts, consumer isolation, failure handling, and replay — removing synchronous coupling between domains, improving resilience and scalability, and containing the blast radius of downstream outages
* Defined API and integration strategy for platform services, standardizing REST contracts, versioning, and backward-compatibility rules so consuming teams could evolve independently of provider release cycles
* Maintained enterprise architecture documentation and application landscape governance using LeanIX, improving transparency, dependency visibility, and alignment across IT domains
* Evaluated architectural trade-offs, scalability risks, and long-term platform evolution strategies — including cost, operability, and migration effort — to support sustainable business growth
* Mentored engineers and architects through design reviews, pairing on architectural decisions, and written guidance, contributing to technical leadership development across teams

### Environment

AWS • Kafka • SNS/SQS • Java • Spring Boot • REST APIs • Microservices • Distributed Systems • CI/CD • LeanIX

---

## Application Architect — Hotelbeds

Sep 2015 – Jan 2017

*Provided solutions in the areas of disaster recovery, data integrity and security, and led the design and analysis of software projects across high-availability travel distribution platforms.*

* Designed and scaled backend services processing millions of daily transactions across high-availability travel distribution platforms, sized for peak distribution load
* Led modernization of legacy systems into modular microservices-based architectures, defining service decomposition, data ownership, and integration contracts to improve scalability and maintainability
* Improved platform performance by up to 30% through architectural optimization and distributed system enhancements, targeting the structural bottlenecks — call topology, data access paths, and caching strategy — rather than isolated code tuning
* Defined reusable frameworks, integration standards, and development practices, giving multiple teams a common foundation and improving engineering consistency and delivery efficiency
* Collaborated with engineering and business stakeholders to prioritize architectural investment and support scalable platform evolution

### Environment

Java • Spring • REST APIs • Microservices • Distributed Systems • High Availability

---

## Application Architect — Onwhyon

Nov 2014 – Jun 2015

*Lead architect for Bankia Indicex, a public self-assessment platform scoring a website's digital maturity across eight behavioural areas.*

* Architected Bankia Indicex, scoring websites across eight digitalization areas — SEO, usability, content, digital marketing, social networking, web analytics, e-commerce, and mobility — into a single end-user report
* Designed the three-stage processing pipeline: crawler-based extraction of page structure, links, and metadata; parallel enrichment through a thread pool against ~10 third-party APIs (SEMrush, PageSpeed, W3C, Klout, and the major social platforms); and scored report generation — accounting for rate limits, partial failures, and highly variable source data quality
* Improved reporting scalability and integration reliability for multi-source analytical workloads, reducing the operational cost of onboarding each additional data source

### Environment

Java • Spring 4 • Spring Data / JPA • REST APIs • AngularJS • MySQL • Web Crawling • Third-Party API Integration

---

## Senior Consultant / Software Architect — Trentiserv

Apr 2010 – Nov 2014

*Delivered architecture and consulting for enterprise banking and financial platforms, ensuring the viability of systems against the business characteristics of each customer and advising on integration strategy and long-term maintainability.*

* Delivered architecture solutions for enterprise banking systems, including SEPA-related platforms and financial integrations, working within strict correctness, traceability, and regulatory constraints
* Designed high-throughput systems for processing large volumes of financial and transactional data, with emphasis on data integrity, reconciliation, and predictable behaviour under batch and peak load
* Advised stakeholders on scalability, integration strategy, and architectural decision-making for enterprise platforms
* Collaborated with technical and business teams to deliver resilient and maintainable financial systems

### Environment

Enterprise Integration • Financial Systems • High-Throughput Processing • Distributed Architectures

---

# EARLIER EXPERIENCE

**Software Developer** — Virtual Desk · Sep 2009 – Apr 2010
Distributed architecture solutions, technology selection, and code reviews (ZKOSS, Spring 2.5, Hibernate/JPA, Oracle 10g).

**Software Developer** — Everis Spain · Jan 2009 – Sep 2009
Java application architecture, SOA, Liferay portlets, and data modelling, migration, and warehousing.

**Software Developer** — OLTP Voice, Caracas · Jan 2008 – Jan 2009
Middleware for Movistar post-paid transaction and account activation systems.

**Software Developer** — Imolko, Caracas · Jan 2006 – Jan 2008
Web and business components for SMS-based platforms (Java, Web Services / SOA, SMPP).

---

# TECHNICAL EXPERTISE

### Architecture & Design

Microservices • Hexagonal Architecture (Ports & Adapters) • CQRS • Event Sourcing • Domain-Driven Design (aggregates, value objects, domain events) • Event-Driven Architecture • API-First & Versioned REST Design • Multi-Tenancy & Tenant Isolation • Saga / Compensating Transactions • Idempotency & Optimistic Concurrency • Backend-for-Frontend • High Availability, Resilience & Graceful Degradation

### AWS & Infrastructure as Code

ECS Fargate • API Gateway • Lambda • RDS PostgreSQL & RDS Proxy • ElastiCache Redis • MSK / Managed Kafka • Cognito (OIDC/JWT, custom claims, M2M client credentials) • S3 • Secrets Manager • CloudWatch • VPC & Network Segmentation • Application Load Balancer & Auto Scaling • Organizations, SCPs & IAM Identity Center • Multi-Account Landing Zones • Terraform (reusable modules, thin per-environment root stacks, remote-state composition) • Docker • Ansible

### Engineering & Delivery

Java 21 • Spring Boot 3.5 • Spring Cloud Stream • Spring Security (OAuth2 Resource Server, method security) • Spring Data JPA / Hibernate • OpenAPI • Micrometer & Distributed Tracing • Maven (shared parent POMs, published libraries) • Python • TypeScript • Next.js (App Router, SSR / React Server Components) • React • GitLab CI (parent/child pipelines, path-based change gating, DAG orchestration) • OIDC Keyless Cloud Authentication • Plan-then-Apply Governance • Promotion Gates (test → staging → production) • Trunk-Based Development

### Data & Messaging

PostgreSQL (Row-Level Security, GiST exclusion constraints, PostGIS, transaction-scoped tenant context) • Event Store Design (append-only log, snapshots, durable subscription offsets) • Apache Kafka / MSK • CloudEvents • Dead-Letter Queues & Replay Strategies • Redis Caching • Schema Migration Governance (Flyway) • Data Modeling for Multi-Tenant Systems

### Security & Quality Engineering

OAuth 2.0 / OIDC • JWT & Claim-Based Authorization • RBAC & Fine-Grained Permission Models • Database-Enforced Tenant Isolation • Least-Privilege IAM • Service Control Policy Guardrails • Secrets Management • GDPR / EU Regulatory Assessment • JUnit 5 & Mockito • Testcontainers Integration Testing • Property-Based Testing • Playwright • Load Testing (Locust) • SonarQube • Architecture Documentation (arc42, C4, Mermaid)

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
