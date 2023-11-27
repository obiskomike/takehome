variable "bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
}

variable "project_id" {
  description = "The project ID where the bucket will be created"
  type        = string
}

variable "location" {
  description = "The location for the GCS bucket"
  type        = string
}

variable "force_destroy" {
  description = "When deleting the bucket, this option will delete all contained objects"
  type        = bool
  default     = false
}

variable "service_account_email" {
  description = "Service account email for granting access to the bucket"
  type        = string
}
