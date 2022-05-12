#===================Output aws_s3_bucket=====================#
output output_bucket {
  description = "S3 Bucket Output"
  value       = aws_s3_bucket.create_bucket
}