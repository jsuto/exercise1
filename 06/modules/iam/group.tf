resource "aws_iam_group" "group" {
  name = "${var.prefix}-group"
  path = "/"
}

resource "aws_iam_group_policy_attachment" "attach" {
  group      = aws_iam_group.group.name
  policy_arn = aws_iam_policy.policy.arn
}
