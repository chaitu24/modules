resource "aws_security_group" "sg_main" {
   name   = var.sg_name
   dynamic "ingress" {
       for_each = var.ingress_rules
       content {
           description = ingress.value.description
           from_port   = ingress.value.from_port   
           to_port     = ingress.value.to_port     
           protocol    = "tcp"
           cidr_blocks = ingress.value.cidr_blocks
       }
   }
}