provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "rustInstance" {
  ami           = "ami-007855ac798b5175e" # Change to the AMI of your choice
  instance_type = "t2.micro"

  key_name = "spring22"
  tags = {
    Name = "spring22"
  }
  vpc_security_group_ids = [aws_security_group.inbound.id]
}

resource "aws_security_group" "inbound" {
  name_prefix = "inbound-sg-"


  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}