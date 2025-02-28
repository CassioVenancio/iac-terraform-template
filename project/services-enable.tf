resource "google_project_service" "enabled_services" {
  for_each = toset([
    "cloudbuild.googleapis.com",        # Cloud Build (para construir imagens)
    "artifactregistry.googleapis.com",  # Artifact Registry (para armazenar imagens)
    "run.googleapis.com",               # Cloud Run (para deploy)
    "iam.googleapis.com"                # IAM (para gerenciar permissões)
  ])

  project = var.project_id
  service = each.value

  disable_on_destroy = false
}
