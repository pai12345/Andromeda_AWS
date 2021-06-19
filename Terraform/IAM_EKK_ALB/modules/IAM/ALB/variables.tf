# Variable for IAM Role Policy
variable "aws_iam_role_policy" {
    description = "Variables for aws_iam_role_policy"
    sensitive = false
    default = {
        name = "alb_role_policy"
    }
}

# Variable for IAM instance profile
variable "aws_iam_instance_profile" {
    description = "Variables for aws_iam_instance_profile"
    sensitive = false
    type = object({
        name = string
        tags = map(string) 
    })
    default = {
        name = "alb_instanceprofile"
        tags = {
            type = "Instance profile ALB"
        }
    }
}