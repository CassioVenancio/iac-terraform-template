resource "google_service_account" "pipeline_sa" {
  account_id   = var.pipeline_sa_account_id
  display_name = var.pipeline_sa_display_name
}

resource "google_project_iam_member" "pipeline_roles" {
  for_each = toset([
    "roles/cloudbuild.builds.editor",    # Permissão para Cloud Build criar imagens
    "roles/artifactregistry.writer",     # Permissão para gravar no Artifact Registry
    "roles/run.admin",                   # Permissão para implantar no Cloud Run
    "roles/iam.serviceAccountUser"       # Permissão para atuar como conta de serviço
  ])

  project = var.project_id
  role    = each.value
  member  = "serviceAccount:${google_service_account.pipeline_sa.email}"
}
