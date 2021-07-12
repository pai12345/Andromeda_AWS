#===================Output Dynamo DB=====================#
output output_terraform_locks {
    value=module.generate_s3
    sensitive = false
    description = "Output for Dynamo DB"
}