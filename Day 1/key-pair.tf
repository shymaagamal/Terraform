resource "aws_key_pair" "my_key" {
  key_name   = "my-aws-key"
  public_key = file("~/.ssh/my-aws-key.pub")
}