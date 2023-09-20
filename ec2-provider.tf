provider "aws" {
  region = "us-west-2"
  profile = "default"
}
resource "aws_instance" "ec2" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
    env = "prod"
  }
}
#take note this is two instance and the names must be different
#you can do that even for many istance and the name should be different

resource "aws_instance" "ec2_demo" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
    env = "prod"
  }
}
