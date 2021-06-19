#===================IAM Role=================#
output output_iam_role {
    value=aws_iam_role.alb_ingress_role
    sensitive = false
    description = "IAM Role for ALB created"
}

#===================IAM Role Policy=================#
output output_iam_role_policy {
    value=aws_iam_role_policy.alb_role_policy
    sensitive = false
    description = "IAM Role Policy for ALB created"
}

#===================IAM Instance Profile=================#
output output_iam_instance_profile {
    value=aws_iam_instance_profile.alb_instanceprofile
    sensitive = false
    description = "IAM Instance Profile for ALB created"
}