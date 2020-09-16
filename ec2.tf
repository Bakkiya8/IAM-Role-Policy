resource "aws_instance" "web" {
  ami           = "ami-0841edc20334f9287"
  instance_type = "t2.micro"
  iam_instance_profile = "${aws_iam_instance_profile.ec2_profile.name}"

  tags = {
    Name = "HelloWorld"
  }
}
