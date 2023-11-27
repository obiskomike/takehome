output "project_id" {
  value       = google_project.project.project_id
  description = "The Project ID of the created GCP project."
}

output "project_name" {
  value       = google_project.project.name
  description = "The name of the created GCP project."
}
