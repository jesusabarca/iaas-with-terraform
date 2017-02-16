provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web" {
    ami = "ami-0b33d91d" # Amazon Linux AMI 2016.09
    instance_type = "t2.micro"
    key_name = "emerson"
    tags {
        Name = "HelloWorld"
    }
}
