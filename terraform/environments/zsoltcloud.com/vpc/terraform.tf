terraform {
  required_version = "~> 1.0"

  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }

  backend "s3" {
    region = "eu-central-1"

    bucket = "zsoltcloud.com-terraform-state"
    key    = "vpc.tfstate"

    dynamodb_table = "zsoltcloud.com-terraform-locks"
    encrypt        = true
  }
}
