provider "google" {
  project = var.default_project
  region  = var.default_region
}

module "sandbox_project" {
  source = "./modules/project"

  project_name    = "sandbox-${var.developer_id}"
  project_id      = "sandbox-${var.developer_id}-${var.random_suffix}"
  org_id          = var.org_id
  billing_account = var.billing_account
}

module "sandbox_gcs" {
  source              = "./modules/gcs"
  bucket_name         = "sandbox-bucket-${var.developer_id}"
  project_id          = module.sandbox_project.project_id
  location            = var.gcs_location
  force_destroy       = true
  service_account_email = var.service_account_email
}


module "sandbox_vertex_ai" {
  source    = "./modules/vertex_ai"
  project_id = module.sandbox_project.project_id
}

module "sandbox_cloud_sql" {
  source         = "./modules/cloud_sql"
  instance_name  = "sandbox-sql-${var.developer_id}"
  project_id     = module.sandbox_project.project_id
  region         = var.cloud_sql_region
  machine_type   = var.cloud_sql_machine_type
  db_password    = var.db_password
}


