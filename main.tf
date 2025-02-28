module "backend_bucket" {
  source = "./storage/"

  backend_bucket_name = var.backend_bucket_name
  project_id          = var.project_id
  region              = var.region
}

module "iam" {
  source = "./iam/"

  pipeline_sa_account_id   = var.pipeline_sa_account_id
  project_id               = var.project_id
  pipeline_sa_display_name = var.pipeline_sa_display_name
}

module "project" {
  source = "./project/"

  project_id = var.project_id
}

module "registry" {
  source = "./registry/"

  project_id    = var.project_id
  region        = var.region
  repository_id = var.repository_id
}