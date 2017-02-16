            ___    ____   __                   __  __                          _ __  __                        _       __    __
           /   |  / / /  / /_____  ____ ____  / /_/ /_  ___  _____   _      __(_) /_/ /_     _   ______ ______(_)___ _/ /_  / /__     ____  ____ _____ ___  ___  _____
          / /| | / / /  / __/ __ \/ __ `/ _ \/ __/ __ \/ _ \/ ___/  | | /| / / / __/ __ \   | | / / __ `/ ___/ / __ `/ __ \/ / _ \   / __ \/ __ `/ __ `__ \/ _ \/ ___/
         / ___ |/ / /  / /_/ /_/ / /_/ /  __/ /_/ / / /  __/ /      | |/ |/ / / /_/ / / /   | |/ / /_/ / /  / / /_/ / /_/ / /  __/  / / / / /_/ / / / / / /  __(__  )
        /_/  |_/_/_/   \__/\____/\__, /\___/\__/_/ /_/\___/_/       |__/|__/_/\__/_/ /_/    |___/\__,_/_/  /_/\__,_/_.___/_/\___/  /_/ /_/\__,_/_/ /_/ /_/\___/____/
                                /____/
        • variables.tf

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
















































































slide 011