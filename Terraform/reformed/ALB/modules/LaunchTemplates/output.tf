#===================Output for fetching EC2 instance profile=====================#
output "output_ec2_instance_profile" {
  description = "Output for fetching ec2 instance profile"
  sensitive   = false
  value       = data.aws_iam_instance_profile.ec2_instance_profile
}

#===================Output for fetching EC2 AMI=====================#
output "output_ubuntu" {
  description = "Output for fetching EC2 AMI"
  sensitive   = false
  value       = data.aws_ami.ubuntu
}

#===================Output for fetching VPC=====================#
output "output_fetch_vpc" {
  description = "Output for fetching VPC"
  sensitive   = false
  value       = data.aws_vpc.fetch_vpc
}

#===================Output for creating Security Group=====================#
output "output_create_security_group" {
  description = "Output for creating Security Group"
  sensitive   = false
  value       = aws_security_group.create_security_group
}


#===================Output for EC2 Launch Template=====================#
output "output_andromeda_ec2_template" {
  description = "Output for EC2 Launch Template"
  sensitive   = false
  value       = aws_launch_template.andromeda_ec2_template
}

#===================Output for Security Group Egress rulee=====================#
output "output_egress_rule" {
  description = "Output for Security Group Egress rule"
  sensitive   = false
  value       = aws_security_group_rule.egress_rule
}

#===================Output for Security Ingress HTTP rules=====================#
output "output_ingress_rule_http" {
  description = "Output for Security Group Ingress HTTP rule"
  sensitive   = false
  value       = aws_security_group_rule.ingress_rule_http
}

#===================Output for Security Ingress HTTPS rules=====================#
output "output_ingress_rule_https" {
  description = "Output for Security Group Ingress HTTPS rule"
  sensitive   = false
  value       = aws_security_group_rule.ingress_rule_https
}

#===================Output for Security SSH rules=====================#
output "output_ssh_rule" {
  description = "Output for Security Group SSH rule"
  sensitive   = false
  value       = aws_security_group_rule.ssh_rule
}