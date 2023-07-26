terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
    }
    local = {
      source = "hashicorp/local"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.57.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.10.0"
    }
  }
}





provider "aws" {
  region = var.region
}

provider "local" {
}

provider "null" {
}
