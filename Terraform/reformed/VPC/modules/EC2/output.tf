# Output for ami
output "output_aws_ami" {
  description = "Output for ami"
  value       = data.aws_ami.ubuntu
}

# Output for aws_subnet
output "output_aws_key_pair" {
  description = "Output for fetching public key"
  value       = data.aws_key_pair.get_key
}

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

# Output for EC2
output "output_ec2_create" {
  description = "Output for EC2 Instance"
  value       = aws_instance.ec2_create
}