output "bucket_name" {
  value       = google_storage_bucket.bucket.name
  description = "The name of the created GCS bucket."
}

output "bucket_url" {
  value       = "gs://${google_storage_bucket.bucket.name}"
  description = "The URL of the created GCS bucket."
}
