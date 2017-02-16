variable "ami" {
   default = "ami-0b33d91d" # Amazon Linux AMI 2016.09
}

variable "instance_type" {
   default = "t2.micro" # Free tier instance type
}

variable "security_groups" {
   default = [
      "sg-126e156f", # launch-wizard-1
   ]
}
