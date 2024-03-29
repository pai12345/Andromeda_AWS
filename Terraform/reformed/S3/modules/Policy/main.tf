# add bucket policy
resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = var.bucketid
  policy = jsonencode({
    "Id" : "Policy1652430342619",
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Sid" : "AllowCloudFrontServicePrincipal",
        "Effect" : "Allow",
        "Principal" : {
          "Service" : "cloudfront.amazonaws.com"
        },
        "Action" : "s3:GetObject",
        "Resource" : "arn:aws:s3:::mytestbucketpai1.andromedatest.click/*",
        "Condition" : {
          "StringLike" : {
            "AWS:SourceArn" : "arn:aws:cloudfront::*:distribution/*"
          }
        }
      },
      /* {
        "Sid" : "AllowTLSRequestsOnly",
        "Effect" : "Deny",
        "Principal" : "*",
        "Action" : "s3:*",
        "Resource" : "${var.bucketarn}/*",
        "Condition" : {
          "Bool" : {
            "aws:SecureTransport" : "false"
          }
        }
      }, */
      {
        "Sid" : "Stmt1652430340613",
        "Action" : [
          "s3:GetObject"
        ],
        "Effect" : "Allow",
        "Resource" : "${var.bucketarn}/*",
        "Principal" : "*"
      },
      {
        "Sid" : "DenyIncorrectEncryptionHeader",
        "Effect" : "Deny",
        "Principal" : "*",
        "Action" : "s3:PutObject",
        "Resource" : "${var.bucketarn}/*",
        "Condition" : {
          "StringNotEquals" : {
            "s3:x-amz-server-side-encryption" : "AES256"
          }
        }
      },
      {
        "Sid" : "DenyUnEncryptedObjectUploads",
        "Effect" : "Deny",
        "Principal" : "*",
        "Action" : "s3:PutObject",
        "Resource" : "${var.bucketarn}/*",
        "Condition" : {
          "Null" : {
            "s3:x-amz-server-side-encryption" : true
          }
        }
      }
    ]
  })
}
