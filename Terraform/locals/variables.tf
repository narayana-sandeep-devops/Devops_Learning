variable "name" {
    type = string
    default = "terraform"
}

variable "envrionment" {
    type = string
    default = "dev"
  
}

/* variable "instance_name" {
    type = string
    default = ${var.name}-${var.environment}
  
} */