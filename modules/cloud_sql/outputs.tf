output "instance_name" {
  value       = google_sql_database_instance.postgres.name
  description = "The name of the Cloud SQL instance"
}

output "instance_connection_name" {
  value       = google_sql_database_instance.postgres.connection_name
  description = "The connection name of the Cloud SQL instance"
}

output "db_host" {
  value       = google_sql_database_instance.postgres.ip_address[0].ip_address
  description = "The IP address of the Cloud SQL instance"
}
