variable "state_bucket_name" {
  type        = string
  description = "Name of the Terraform state bucket"
}

variable "lock_table_name" {
  type        = string
  description = "Name of the Terraform lock table"
}
