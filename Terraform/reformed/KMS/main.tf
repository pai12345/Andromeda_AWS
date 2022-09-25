# generate new KMS key
module "generate_new_kmskey" {
  source = "./modules/CreateKey/"
  policy = file("${path.module}/policy/allow.json")
}

# generate new KMS alias
module "generate_new_keyalias" {
  source        = "./modules/CreateAlias/"
  target_key_id = module.generate_new_kmskey.output_create_customkey.key_id
}