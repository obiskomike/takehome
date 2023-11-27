variable "default_project" {
  description = "Default GCP project"
}

variable "default_region" {
  description = "Default GCP region"
}

variable "developer_id" {
  description = "Unique identifier for the developer"
}

variable "random_suffix" {
  description = "Random suffix for resource naming"
}

variable "org_id" {
  description = "GCP organization ID"
}

variable "billing_account" {
  description = "GCP billing account ID"
}

variable "gcs_location" {
  description = "Location for GCS bucket"
}

variable "cloud_sql_region" {
  description = "Region for Cloud SQL instance"
}

variable "cloud_sql_machine_type" {
  description = "Machine type for Cloud SQL instance"
}

