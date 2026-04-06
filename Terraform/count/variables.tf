variable "instances" {
    type = list
    default = ["mangodb","redis","mysql","rabbitmq","catalogue","user","cart","shipping","payment","frondend"]
  
}

variable "zone_id" {
    default = "Z02709693P5LDKOA75JSO"
  
}

variable "domain_name" {
    default = "sandeepinfo.online"
  
}


#example of list & set

variable "fruits_names" {
    type = list(string)
    default = ["banana","apple","mango","apple"]
  
}

variable "fruits_set" {
    type = set(string)
    default = ["banana","apple","mango","apple"]
  
}