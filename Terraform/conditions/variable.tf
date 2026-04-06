variable "environment" {
    default = "dev"
}


variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map
    default = {
        Name = "Variables_demo"
        Project = "roboshop"
        env = "dev"
    }
  
}

variable "sg_name" {
    type = string
    default = "allow-all-terraform"
  
}

variable "sg_from_port" {
    type = number
    default = 0
  
}

variable "sg_to_port" {
    type = number
    default = 0
}

variable "cidr_blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

variable "sg_tags" {
    type = map
    default = {
        Name = "allow-all-terraform"
        Project = "roboshop"
        Terraform = "true"
        Environment = "dev" 
    }
  
}