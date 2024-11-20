resource "aws_iam_user" "name" {
  name = "Dianna"
}
resource "aws_iam_group" "groupname" {
  name = "sre"
}
resource "aws_iam_group_membership" "membership" {
  name = "addinguser"
  group = aws_iam_group.groupname.name
  users = [aws_iam_user.name.name ]
}