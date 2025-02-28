resource "google_storage_bucket" "backend_bucket" {
  name = var.backend_bucket_name
  project  = var.project_id
  location = var.region
}
