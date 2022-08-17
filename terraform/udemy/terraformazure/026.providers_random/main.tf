# Sample use for 'random' provider
terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

provider "random" {

}

resource "random_string" "random_str" {
  length  = 24
  lower   = true
  numeric = true
  special = false
  upper   = true
}
