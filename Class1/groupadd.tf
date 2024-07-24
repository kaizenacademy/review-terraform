resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.hello1.name,
    aws_iam_user.hello2.name,
  ]

  group = aws_iam_group.group1.name
}