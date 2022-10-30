# creating Ec2 intance
  #terrafrorm aws ec2-intance
  resource "aws_instance" "myweb" {
    ami                         = var.ami_id
    associate_public_ip_address = true
    instance_type               = var.intance_type
    vpc_security_group_ids      = [var.sg_id]

    tags = {
      Name = "neflix-web"
    }
  }