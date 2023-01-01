provider "aws" {
  region              = "eu-central-1"
  allowed_account_ids = [136064245672]

  default_tags {
    tags = {
      Environment = "zsoltcloud.com"
      ManagedBy   = "Terraform"
    }
  }
}
