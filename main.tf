resource "aws_instance" "web" {
  instance_type="t3.micro"
  ami=data.aws_ami.this.id
  user_data=filebase64("scripts/user_data.sh")
}

data "aws_ami" "this" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }
}