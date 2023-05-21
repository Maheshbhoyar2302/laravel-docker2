terraform {
  cloud {
    organization = "maheshbhoyar"

    workspaces {
      name = "lara-ecs"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}