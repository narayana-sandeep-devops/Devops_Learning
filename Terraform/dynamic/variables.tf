variable "ingress_rules" {
    default = [
        {
            port = 22
            cidr_blocks = ["0.0.0.0/0"]
            description = "allowing port number 22 from internet"
        },
        {
            port = 3386
            cidr_blocks = ["0.0.0.0/0"]
            description = "allowing port number 3386 from internet"
        },
        {
            port = 443
            cidr_blocks = ["0.0.0.0/0"]
            description = "allowing port number 443 from internet"
        },
    ]
  
}