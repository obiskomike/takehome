resource "google_sql_database_instance" "postgres" {
  name             = var.instance_name
  project          = var.project_id
  region           = var.region
  database_version = "POSTGRES_12"

  settings {
    tier = var.machine_type

    # Additional settings like backups, maintenance windows, etc., can be configured here.
  }
}

resource "google_sql_database" "default" {
  name     = "default_db"
  instance = google_sql_database_instance.postgres.name
  project  = var.project_id
}

resource "google_sql_user" "default" {
  name     = "postgres"
  instance = google_sql_database_instance.postgres.name
  project  = var.project_id
  password = var.db_password
}
