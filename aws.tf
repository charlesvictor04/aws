resource "aws_instance" "web" {
  ami           = "ami-00785f4835c6acf64"
  instance_type = "t3.micro"
  tags = {
    Name = "Updated-jenkins"
  }
}
