variable "credentials_file" {
  type    = string
  default = "~/.google/gcp-gke.json"
}

variable "gcp_project_id" {
  description = "Google project id"
  type        = string
}

variable "gcp_project_name" {
  description = "Google project name"
  type        = string
}

variable "region" {
  description = "Region name"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zone name"
  type        = string
  default     = "us-central1-c"
}

variable "gke_username" {
  default     = ""
  description = "gke username"
}

variable "gke_password" {
  default     = ""
  description = "gke password"
}

variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}

