data "aws_iam_policy_document" "sqs_policy" {
  statement {
    sid    = "shsqsstatement"
    effect = "Allow"
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    actions = [
      "sqs:SendMessage",
      "sqs:ReceiveMessage"
    ]
    resources = ["*"]
  }
}


resource "aws_sqs_queue" "create_queue" {
  name                       = "s3bucket-queue"
  sqs_managed_sse_enabled    = true
  visibility_timeout_seconds = 30
  message_retention_seconds  = 300
  tags = {
    type    = "sqs",
    project = "andromeda"
  }
}

resource "aws_sqs_queue_policy" "attach_policy" {
  queue_url = aws_sqs_queue.create_queue.id
  policy    = data.aws_iam_policy_document.sqs_policy.json
}
