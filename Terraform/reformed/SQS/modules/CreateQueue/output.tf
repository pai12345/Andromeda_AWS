#===================Output for creating queue=====================#
output "output_create_queue" {
  value       = aws_sqs_queue.create_queue
  sensitive   = false
  description = "Output for create_queue"
}

#===================Output for generating iam document=====================#
output "output_sqs_policy" {
  value       = data.aws_iam_policy_document.sqs_policy
  sensitive   = false
  description = "Output for sqs_policy"
}

#===================Output for attaching policy for queue=====================#
output "output_attach_policy" {
  value       = aws_sqs_queue_policy.attach_policy
  sensitive   = false
  description = "Output for attach_policy"
}
