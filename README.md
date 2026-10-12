# barberia-bot-aws

WhatsApp bot for barbershop appointment booking.

## Stack

- **Cloud**: AWS (us-east-1)
- **IaC**: Terraform
- **Config management**: Ansible
- **CI/CD**: GitHub Actions
- **App**: Python + FastAPI
- **DB**: PostgreSQL (RDS)
- **Reverse proxy**: Caddy (HTTPS auto)
- **WhatsApp**: Meta Cloud API

## Structure

- 	erraform/ - Infrastructure as Code
- nsible/ - Server configuration
- pp/ - Bot source code
- docs/ - Architecture and runbooks
- .github/workflows/ - CI/CD pipelines
