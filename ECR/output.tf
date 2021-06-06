#===================Output Module generate_vpc=====================#
output output_generate_ecr {
    value=module.generate_ecr
    sensitive = false
    description = "Output for Module ECR"
}