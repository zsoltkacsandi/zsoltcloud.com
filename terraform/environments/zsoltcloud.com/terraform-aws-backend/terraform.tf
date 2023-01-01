terraform {
  required_version = "~> 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.40"
    }
  }

  backend "s3" {
    region = "eu-central-1"

    bucket = "zsoltcloud.com-terraform-state"
    key    = "terraform-aws-backend.tfstate"

    dynamodb_table = "zsoltcloud.com-terraform-locks"
    encrypt        = true
  }
}
