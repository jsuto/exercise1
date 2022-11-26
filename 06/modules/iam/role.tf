resource "aws_iam_role" "test_role" {
  name               = "${var.prefix}-role"
  tags               = var.tags

  assume_role_policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Effect    = "Allow"
        Sid       = ""
        Principal = {
          AWS = aws_iam_user.user.arn
        }
      },
    ]
  })
}
