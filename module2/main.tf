terraform {
  required_version = ">=0.12"
}


resource "aws_instance" "ec2_amazon" {
	ami = var.ami
	instance_type = var.instance_type
	key_name = var.key_name
	user_data = file(var.userdata_file_path)
	tags = {
		Name = var.instance_name	
	}

}

resource "aws_security_group" "web-server" {
  name        = "web-server"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0eb00bd1a7b6cdef6"

  ingress {
    description      = "HTTP"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description      = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
