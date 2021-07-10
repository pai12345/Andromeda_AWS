output "s3_bucket" {
  description = "S3 Bucket"
  value       = aws_s3_bucket.andrterraformbackend
}

output "s3_log_bucket" {
  description = "S3 Log Bucket"
  value       = aws_s3_bucket.andrlogbucket
}