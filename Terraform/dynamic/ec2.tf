
#Creating Ec2 instance
resource "aws_instance" "roboshop" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  subnet_id = "subnet-00cb815097e9622c0"


  tags = {
    Name = "terraform"
    Project = "roboshop"
  }
}


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-0774fd8a3c8386c53"


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }


# here ingress is going to be special variable
  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port        = ingress.value.port
      to_port          = ingress.value.port
      protocol         = "tcp"
      cidr_blocks      = ingress.value.cidr_blocks
      description      = ingress.value.description 
      
    }
    
  }


  tags = {
    Name = "allow_tls"
  }
}

