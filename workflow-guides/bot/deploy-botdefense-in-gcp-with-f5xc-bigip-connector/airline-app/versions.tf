terraform {
  required_version = "1.10.5"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.9.0"
    }

     kubectl = {
      source  = "gavinbunney/kubectl"
      version = ">=1.7.0"
    }
  }
}