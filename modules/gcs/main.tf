resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  project       = var.project_id
  location      = var.location
  force_destroy = var.force_destroy


  uniform_bucket_level_access = true
}

resource "google_storage_bucket_iam_binding" "bucket_iam" {
  bucket = google_storage_bucket.bucket.name
  role   = "roles/storage.objectAdmin"

  members = [
    "serviceAccount:${var.service_account_email}",
  ]
}
