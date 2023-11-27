# Output for the GCP Project
output "sandbox_project_id" {
  value       = module.sandbox_project.project_id
  description = "The Project ID of the created GCP sandbox project."
}

# Output for the GCS Bucket
output "sandbox_gcs_bucket_name" {
  value       = module.sandbox_gcs.bucket_name
  description = "The name of the created GCS bucket in the sandbox environment."
}

# Output for the Vertex AI
output "sandbox_vertex_ai_enabled" {
  value       = module.sandbox_vertex_ai.enabled
  description = "Indicates if Vertex AI is enabled in the sandbox environment."
}

# Output for the Cloud SQL Instance
output "sandbox_cloud_sql_instance_name" {
  value       = module.sandbox_cloud_sql.instance_name
  description = "The instance name of the Cloud SQL instance in the sandbox environment."
}

# Output for the Cloud SQL Instance Connection Name
output "sandbox_cloud_sql_instance_connection_name" {
  value       = module.sandbox_cloud_sql.instance_connection_name
  description = "The connection name of the Cloud SQL instance in the sandbox environment."
}
