resource "google_project_service" "vertex_ai" {
  project = var.project_id
  service = "aiplatform.googleapis.com"
}


data "google_iam_policy" "admin" {
  binding {
    role = "roles/viewer"
    members = [
      "user:obissmichael@gmail.com",
    ]
  }
}

resource "google_vertex_ai_featurestore_iam_policy" "policy" {
  project = google_vertex_ai_featurestore.featurestore.project
  region = google_vertex_ai_featurestore.featurestore.region
  featurestore = google_vertex_ai_featurestore.featurestore.name
  policy_data = data.google_iam_policy.admin.policy_data
}