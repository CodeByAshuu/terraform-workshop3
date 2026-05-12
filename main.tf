provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_instance" {
  ami = "ami-053b12d3152c0cc71"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-Student-Instance"
  }
}

output "instance_public_ip" {
  value = aws_instance.my_instance.public_ip
}