resource "google_project" "project" {
  name            = var.project_name
  project_id      = var.project_id
  org_id          = var.org_id
  billing_account = var.billing_account

  auto_create_network = true  # Set to false if you want to create and manage networks manually.
}

resource "google_project_service" "compute" {
  project = google_project.project.project_id
  service = "compute.googleapis.com"
}

# Enable any other required services in a similar way
