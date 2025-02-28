variable "project_id" {
  type = string
}

variable "billing_account_id" {
  type        = string
  description = "Conta de faturamento do GCP"
}

variable "region" {
  type    = string
  default = "us-east1"
}

variable "backend_bucket_name" {
  type = string
}

variable "pipeline_sa_account_id" {
  type = string
}

variable "pipeline_sa_display_name" {
  type = string
}

variable "repository_id" {
  type = string
}