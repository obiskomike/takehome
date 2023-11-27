resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  project       = var.project_id
  location      = var.location
  force_destroy = var.force_destroy

  # Bucket settings, like versioning, logging, etc., can be added here.

  uniform_bucket_level_access = true
}

# Optional: Bucket IAM configuration for read/write access
resource "google_storage_bucket_iam_binding" "bucket_iam" {
  bucket = google_storage_bucket.bucket.name
  role   = "roles/storage.objectAdmin"

  members = [
    "serviceAccount:${var.service_account_email}",
  ]
}
