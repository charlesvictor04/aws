resource "aws_instance" "web" {
  ami           = "ami-00785f4835c6acf64"
  instance_type = "t3.micro"
  user_data = << EOF
		#! /bin/bash
    sudo yum update
		sudo yum install -y apache2
		sudo systemctl start apache2
		sudo systemctl enable apache2
		echo "Deployed via Terraform"
	EOF

  tags = {
    Name = "aws-via-jenkins-pr"
  }
}
