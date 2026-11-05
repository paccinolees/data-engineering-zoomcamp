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

resource "google_storage_bucket" "demo-bucket" { #2nd arg here 'demo-bucket' is just a local var name of choice(doesnt hav to be globally uniq)
  name          = "project-10819822-1a19-4dd0-b92-terra-bucket" #must be globally uniq to whole GCP
  location      = "asia-southeast3" #default was US
  force_destroy = true
  uniform_bucket_level_access = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}
