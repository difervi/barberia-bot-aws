variable "tenancy_ocid" {
  description = "OCID of the tenancy"
  type        = string
}

variable "user_ocid" {
  description = "OCID of the user that will run TF"
  type        = string
}
variable "fingerprint" {
  description = "Path to hte API signing private key"
  type        = string
}
variable "region" {
  description = "OCID region"
  type        = string
}
variable "compartment_ocid" {
  description = "OCID of the compartment where resources are created"
  type        = string
}
variable "private_key_path" {
  description = "Path to the API signing private key"
  type        = string
}

variable "project_name" {
  description = "Project name used as prefix for resource names"
  type        = string
  default     = "barberia-bot"
}
variable "cidr_blocks" {
  description = "CIDR block of the VCN"
  type = list(string)
}
