
#Creating Ec2 instance
resource "aws_instance" "roboshop" {
  ami           = local.ami_id
  instance_type = lookup(var.instance_type, local.environment)
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  subnet_id = "subnet-00cb815097e9622c0"


  tags = {
    Name = "${var.project}-${local.environment}"
    Project = "roboshop"
  }
}


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls-terraform-${local.environment}"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-0774fd8a3c8386c53"


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls-${local.environment}"
  }
}

