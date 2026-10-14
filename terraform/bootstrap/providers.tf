terraform {
  backend "s3" {
    bucket = "barberia-bot-tfstate-68f1167c"
    key = "bootstrap/terraform.tfstate"
    region = "us-east-2"
    encrypt = true
    use_lockfile = true
  }
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "terraform"
    }
  }

}