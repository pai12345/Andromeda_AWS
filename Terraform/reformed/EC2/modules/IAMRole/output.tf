#===================Output for creating EC2 accessrole=====================#
output "output_ec2_accessrole" {
  value       = aws_iam_role.ec2_accessrole
  sensitive   = false
  description = "Output for creating EC2 accessrole"
}

#===================Output for creating EC2 role policy=====================#
output "output_ec2_accessrole_policy" {
  value       = aws_iam_role_policy.ec2_accessrole_policy
  sensitive   = false
  description = "Output for creating EC2 role policy"
}


#===================Output for creating EC2 instance profile=====================#
output "output_ec2_accessprofile" {
  value       = aws_iam_instance_profile.ec2_accessprofile
  sensitive   = false
  description = "Output for creating EC2 instance profile"
}
