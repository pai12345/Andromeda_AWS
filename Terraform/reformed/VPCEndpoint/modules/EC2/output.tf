# Output for aws_subnet
output "output_aws_key_pair" {
  description = "Output for fetching public key"
  value       = data.aws_key_pair.get_key
}

# Output for ami
output "output_aws_ami" {
  description = "Output for ami"
  value       = data.aws_ami.amazon_linux
}

#===================Output for creating EC2 Public Security Group=====================#
output "output_secgrp_create_public" {
  value       = aws_security_group.secgrp_create_public
  sensitive   = false
  description = "Output for creating EC2 Public Security Group"
}

#===================Output for creating EC2 Private Security Group=====================#
output "output_secgrp_create_private" {
  value       = aws_security_group.secgrp_create_private
  sensitive   = false
  description = "Output for creating EC2 Private Security Group"
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

# Output for EC2 - Public
output "output_ec2_create_public" {
  description = "Output for EC2 Public Instance"
  value       = aws_instance.ec2_create_public
}

# Output for EC2 - Private
output "output_ec2_create_private" {
  description = "Output for EC2 Private Instance"
  value       = aws_instance.ec2_create_private
}