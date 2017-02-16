provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web" {
    ami = "ami-0b33d91d"
    instance_type = "t2.micro" # Amazon Linux AMI 2016.09
    tags {
        Name = "HelloWorld"
    }
}
