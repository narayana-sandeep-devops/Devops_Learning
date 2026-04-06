variable "instances" {
    type = map
    default = {
        mongodb = "t3.micro"
        mysql = "t3.small"
        user = "t3.micro"
        shipping ="t2.micro"
    }
  
}

variable "zone_id" {
    default = "Z02709693P5LDKOA75JSO"
  
}

variable "domain_name" {
    default = "sandeepinfo.online"
  
}