resource "aws_kms_alias" "create_alias" {
  name          = "alias/test-key"
  target_key_id = var.target_key_id
}