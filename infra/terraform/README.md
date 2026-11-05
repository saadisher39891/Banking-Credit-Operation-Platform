# Terraform infrastructure

Terraform provisions shared Azure and OVH infrastructure through separate environment modules.

- Azure resource groups, AKS, ACR, networking, Key Vault and monitoring
- OVH VPS/private networking and backup targets
- Cloudflare DNS and edge configuration
- Environment separation: dev, staging and production

Use remote state and secret variables in the CI system. Never commit credentials.
