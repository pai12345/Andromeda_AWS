#===================Output Module generate_alb_eks=====================#
output output_generate_alb_eks {
    value=module.generate_alb_eks
    sensitive = false
    description = "Output for Module ALB EKS"
}