terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = [var.ami]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]
}

resource "aws_instance" "web" {
  ami = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name = "terraform-sample-key"
  vpc_security_group_ids = [aws_security_group.sg.id]
  subnet_id = aws_subnet.public_subnet.id

  user_data = file("./scripts/bootstrap.sh")

   tags = {
    Name = var.tag
  }
    volume_tags = {
    Name = var.tag
  } 
  
}