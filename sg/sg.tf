
  # securirt group
  resource "aws_security_group" "tepetSG-web" {
    name        = var.sg_id
    description = "Allow TLS inbound traffic"



    ingress {
      description      = "TLS from VPC"
      from_port        = 80
      to_port          = 80
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
    
    tags = {
      Name = "allow_tls"
    }
  }
