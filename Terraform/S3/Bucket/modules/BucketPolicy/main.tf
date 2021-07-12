resource "aws_s3_bucket_policy" "andr_s3bucketpolicy" {
  bucket = var.bucket
  # policy = jsonencode({
  #    "Version": "2012-10-17",
  #    "Id": "PutObjPolicy",
  #    "Statement": [
  #          {
  #               "Sid": "DenyIncorrectEncryptionHeader",
  #               "Effect": "Deny",
  #               "Principal": "*",
  #               "Action": "s3:PutObject",
  #               "Resource": "${var.bucketarn}/*",
  #               "Condition": {
  #                       "StringNotEquals": {
  #                              "s3:x-amz-server-side-encryption": "AES256"
  #                        }
  #               }
  #          },
  #          {
  #               "Sid": "DenyUnEncryptedObjectUploads",
  #               "Effect": "Deny",
  #               "Principal": "*",
  #               "Action": "s3:PutObject",
  #               "Resource": "${var.bucketarn}/*",
  #               "Condition": {
  #                       "Null": {
  #                              "s3:x-amz-server-side-encryption": true
  #                       }
  #              }
  #          },
  #           {
  #             "Sid": "Stmt1626076822782",
  #             "Action": [
  #               "s3:GetObject"
  #             ],
  #             "Effect": "Allow",
  #             "Resource": "${var.bucketarn}/*",
  #             "Principal": "*"
  #           }
  #    ]
  # })

  policy = jsonencode({
     "Version": "2012-10-17",
     "Id": "PutObjPolicy",
     "Statement": [
           {
                "Sid": "DenyIncorrectEncryptionHeader",
                "Effect": "Deny",
                "Principal": "*",
                "Action": "s3:PutObject",
                "Resource": "${var.bucketarn}/*",
                "Condition": {
                        "StringNotEquals": {
                               "s3:x-amz-server-side-encryption": "AES256"
                         }
                }
           },
           {
                "Sid": "DenyUnEncryptedObjectUploads",
                "Effect": "Deny",
                "Principal": "*",
                "Action": "s3:PutObject",
                "Resource": "${var.bucketarn}/*",
                "Condition": {
                        "Null": {
                               "s3:x-amz-server-side-encryption": true
                        }
               }
           },
            {
              "Sid": "Stmt1626076822782",
              "Action": [
                "s3:GetObject","s3:ListBucket"
              ],
              "Effect": "Allow",
              "Resource": "${var.bucketarn}/*",
              "Principal": "*"
            },
            {
              "Effect": "Allow",
              "Action": ["s3:GetObject", "s3:PutObject"],
              "Resource": "${var.bucketarn}/prod/terraform.tfstate"
            }
     ]
  })
}