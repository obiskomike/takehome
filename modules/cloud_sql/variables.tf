variable "instance_name" {
  description = "Name of the Cloud SQL instance"
  type        = string
}

variable "project_id" {
  description = "Project ID where the instance is created"
  type        = string
}

variable "region" {
  description = "The region of the Cloud SQL instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type of the Cloud SQL instance"
  type        = string
}

variable "db_password" {
  description = "The password for the database user"
  type        = string
  sensitive   = true
}
