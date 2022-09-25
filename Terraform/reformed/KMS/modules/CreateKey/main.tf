# create new key
resource "aws_kms_key" "create_customkey" {
  description              = "Create Custom Key"
  key_usage                = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  policy                   = var.policy
  is_enabled               = true
  enable_key_rotation      = true
  multi_region             = false
  deletion_window_in_days  = 7
  tags = {
    type    = "key"
    project = "andromeda"
  }
}
