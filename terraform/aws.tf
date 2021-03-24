terraform {
  backend "s3" {
      encrypt = false
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.10.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.0.0"
    }

    null = {
      source  = "hashicorp/null"
      version = "3.0.0"
    }

    template = {
      source  = "hashicorp/template"
      version = "2.2.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
  }
  required_version = "~> 0.14"
}

provider "aws" {
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
  access_key = "mock_access_key"
  secret_key = "mock_secret_key"
  region     = "us-east-1"
}