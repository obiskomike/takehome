output "vertex_ai_enabled" {
  value       = google_project_service.vertex_ai.state == "ACTIVE" ? true : false
  description = "Whether the Vertex AI service is enabled"
}