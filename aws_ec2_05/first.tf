resource "aws_vpc" "awesome_vpc" {
   cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "awesome_priv_sn01" {
   vpc_id = "${aws_vpc.awesome_vpc.id}"
   availability_zone = "us-east-1a"
   cidr_block = "10.0.1.0/24"

   tags {
      Name = "priv_sn01"
   }
}

resource "aws_subnet" "priv_sn02" {
   vpc_id = "${aws_vpc.awesome_vpc.id}"
   availability_zone = "us-east-1b"
   cidr_block = "10.0.2.0/24"

   tags {
      Name = "priv_sn02"
   }
}

resource "aws_security_group" "awesome_sg01" {
   name = "awesome_sg01"
   description = "Allow SSH inbout traffic"

   ingress {
      from_port = 22
      to_port = 22
      protocol = "tcp"	
      cidr_blocks = ["0.0.0.0/0"]
   }

   vpc_id = "${aws_vpc.awesome_vpc.id}"
}

resource "aws_instance" "web" {
    ami = "${var.ami}" # Amazon Linux AMI 2016.09
    instance_type = "${var.instance_type}"
    key_name = "${var.key_name}"
    subnet_id = "${aws_subnet.priv_sn02.id}"
    tags {
        Name = "HelloWorld"
    }
}
