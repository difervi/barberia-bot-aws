variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "barberia-bot"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}
variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "dev"
}