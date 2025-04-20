resource "aws_instance" "ubuntu" {
  ami           = "ami-04f167a56786e4b09"
  instance_type = "t2.micro"

  tags = {
    Name = "WebServer"
  }
}