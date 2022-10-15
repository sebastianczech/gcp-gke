terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.36.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)

  project = var.gcp_project_id
  region  = var.region
  zone    = var.zone
}
