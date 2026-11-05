terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "8.10.0"
    }
  }
}

provider "google" {
  # Configuration options
  ##credentials = "./keys/my-creds.json" #can connect creds like this as well(not preferred)
  project = "project-10819822-1a19-4dd0-b92"
  region  = "asia-southeast3"
}