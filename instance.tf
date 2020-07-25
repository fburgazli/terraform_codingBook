provider "aws" {
  profile = "default"
  version = "~> 2.70"
  region  = "us-east-1"
}
resource "aws_instance" "my-EC2" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"

  tags = {
      Name = "web_server"
  }
  depends_on = [aws_vpc.main]
}