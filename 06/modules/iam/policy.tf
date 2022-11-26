resource "aws_iam_policy" "policy" {
  name        = "${var.prefix}-policy"
  path        = "/"
  tags        = var.tags

  policy      = jsonencode({
    Version   = "2012-10-17"
    Statement = [
      {
        Action   = "sts:AssumeRole"
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
