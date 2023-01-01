module "this" {
  source = "../../../modules/terraform-aws-backend"

  state_bucket_name = "zsoltcloud.com-terraform-state"
  lock_table_name   = "zsoltcloud.com-terraform-locks"
}
