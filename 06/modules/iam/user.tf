resource "aws_iam_user" "user" {
  name  = "${var.prefix}-user"
  path  = "/"
  tags  = var.tags
}


resource "aws_iam_user_group_membership" "membership" {
  user   = aws_iam_user.user.name
  groups = [
    aws_iam_group.group.name,
  ]
}

