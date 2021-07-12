#===================Output Dynamo DB=====================#
output output_terraform_locks {
    value=aws_dynamodb_table.terraform_locks
    sensitive = false
    description = "Output for Dynamo DB"
}