terraform {
  required_providers {
    packetfabric = {
      source  = "PacketFabric/packetfabric"
      version = ">= 0.3.1"
    }
    google = {
      source  = "hashicorp/google"
      version = ">= 4.38.0"
    }
  }
}

provider "packetfabric" {
  host  = var.pf_api_server
  token = var.pf_api_key
}

# Make sure you enabled Compute Engine API
provider "google" {
  project     = var.gcp_project_id
  credentials = var.gcp_credentials
  region      = var.gcp_region1
  zone        = var.gcp_zone1
}

# create random name to use to name objects
resource "random_pet" "name" {}