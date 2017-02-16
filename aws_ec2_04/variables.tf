variable "ami" {
   default = "ami-0b33d91d" # Amazon Linux AMI 2016.09
}

variable "instance_type" {
   default = "t2.micro" # Free tier instance type
}

resource "aws_security_group" "sg01" {
   name = "sg01"
   description = "Allow ssh inbound traffic"
   ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
   }
}
