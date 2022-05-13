#===================Output bucket policy=====================#
output output_bucket {
  description = "S3 Bucket Policy"
  value       = aws_s3_bucket_policy.bucket_policy
}