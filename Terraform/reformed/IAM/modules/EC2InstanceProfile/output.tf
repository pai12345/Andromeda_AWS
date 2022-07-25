#===================Output IAM Create Instance Profile=====================#
output "output_create_profile" {
  description = "Output for IAM Create Instance Profile"
  value       = aws_iam_instance_profile.create_profile
}