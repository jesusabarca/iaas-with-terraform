provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web" {
    ami = "${var.ami}" # Amazon Linux AMI 2016.09
    instance_type = "${var.instance_type}"
    key_name = "emerson"
    security_groups = "${var.security_groups}"
    tags {
        Name = "HelloWorld"
    }
}
