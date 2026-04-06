variable "common_tags" {
    type = list
    default = {
        Project = "roboshop"
        Environment = "dev" 
    }
}

variable "ec2_tags" {
    default = {
        Name = "Functions-Demo"
    }
}
