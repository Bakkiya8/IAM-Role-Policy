
resource "aws_iam_role_policy" "iam_ec2_policy" {
  name = "iam_ec2_policy"
  role = aws_iam_role.iam_ec2_role.id

  policy = "${file("policy.json")}"
}

resource "aws_iam_role" "iam_ec2_role" {
  name = "iam_ec2_role"

  assume_role_policy = "${file("ec2-assume-policy.json")}"
}

#aws_iam_instance_profile - used to attach role to ec2 instance
resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2_profile"
  role = aws_iam_role.iam_ec2_role.name
}
