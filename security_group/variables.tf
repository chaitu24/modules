variable "ingress_rules" {
  default = [{
       from_port   = 443
       to_port     = 443
       cidr_blocks      = ["0.0.0.0/0"]
       description = "Port 443"
   },
   {
       from_port   = 80
       to_port     = 80
       cidr_blocks      = ["0.0.0.0/0"]
       description = "Port 80"
   }]
}

variable "sg_name"{
    type = string
    default = "http_all"
}