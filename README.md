# Banking & Credit Operations Platform

> A sanitized portfolio architecture for a Node.js finance platform that manages credit, debt and related business deals.

## What this demonstrates

This project shows how I organize a multi-application finance platform with daily delivery, edge routing, cloud infrastructure, operational automation, monitoring and disaster recovery.

## Product structure

The platform is modeled as five product areas, each with multiple deployable services:

1. credit-origination
2. debt-and-deal-management
3. customer-portal
4. document-and-compliance
5. reporting-and-operations

The wider delivery model supports **13 websites/portals**, Dockerized Node.js applications, YAML/JSON configuration and separate environment promotion.

## Platform stack

- **Cloud:** Azure infrastructure with OVH recovery capacity
- **Edge:** Cloudflare DNS, proxy and edge routing
- **Delivery:** Azure DevOps, GitHub Actions and Semaphore
- **Infrastructure:** Terraform modules for Azure, OVH and Cloudflare
- **Configuration:** Ansible roles for server baseline, Docker, monitoring, backup and service deployment
- **Observability:** Grafana dashboards and alert rules
- **Recovery:** Veeam daily backup verification, restore tests and RPO/RTO runbooks

## Portfolio highlights

- Terraform separation for Azure, OVH recovery and Cloudflare edge resources
- Ansible patching, hardening, monitoring-agent, backup-agent and deployment tasks
- Azure DevOps validation, Terraform plan and controlled deployment stages
- GitHub Actions repository validation
- Semaphore pipeline for npm validation, image build and Ansible deployment
- Grafana alerts for API errors and backup failures
- Veeam disaster-recovery operating procedure

## Repository map

- `projects/` — five product areas
- `infra/terraform/azure/` — Azure platform patterns
- `infra/terraform/ovh/` — recovery infrastructure
- `infra/terraform/cloudflare/` — DNS and edge routing
- `ansible/` — server, patch, Docker, monitoring, backup and deployment tasks
- `azure-devops/` — Azure pipeline examples
- `.semaphore/` — Semaphore delivery pipeline
- `monitoring/` — Grafana alert definitions
- `docs/` — disaster recovery and operational runbooks
- `deploy/k8s/` — sanitized service deployment

This repository is intentionally sanitized. It contains no company names, credentials, customer records, private URLs or production secrets.
