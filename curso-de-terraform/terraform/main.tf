provider "aws" {
    #version = "~> 3.27"
    region  = "us-east-1"
}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-09e67e426f25ce0d7"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
       Name = "dev${count.index}" 
    }
}
