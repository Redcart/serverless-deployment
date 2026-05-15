variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "project_number" {
  description = "GCP project number"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "global_region" {
  description = "Global region for multi-region resources"
  type        = string
}

variable "gcp_credentials" {
  description = "Path to terraform service account credentials"
  type        = string
}

variable "sa_terraform" {
  description = "Terraform service account email"
  type        = string
}

variable "sa_cloud_run" {
  description = "Cloud Run runtime service account"
  type        = string
}

variable "cloud_run_service_name" {
  description = "Cloud Run service name"
  type        = string
}

variable "container_image" {
  description = "Container image deployed to Cloud Run"
  type        = string
}

variable "input_dataset" {
  description = "Input dataset name"
  type        = string
}

variable "output_dataset" {
  description = "Output dataset name"
  type        = string
}

variable "api_key_secret_name" {
  type = string
}

variable "api_key_secret_version" {
  type = string
}