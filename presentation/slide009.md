            ___       __    ___                                   __
           /   | ____/ /___/ (_)___  ____ _   ____ ___  __  __   / /_____  __  __
          / /| |/ __  / __  / / __ \/ __ `/  / __ `__ \/ / / /  / //_/ _ \/ / / /
         / ___ / /_/ / /_/ / / / / / /_/ /  / / / / / / /_/ /  / ,< /  __/ /_/ /
        /_/  |_\__,_/\__,_/_/_/ /_/\__, /  /_/ /_/ /_/\__, /  /_/|_|\___/\__, /
                                  /____/             /____/             /____/
           provider "aws" {
               region = "us-east-1"
           }

           resource "aws_instance" "web" {
               ami = "ami-0b33d91d"
               instance_type = "t2.micro" # Amazon Linux AMI 2016.09
               key_name = "emerson"
               tags {
                   Name = "HelloWorld"
               }
           }
















































































slide 009
