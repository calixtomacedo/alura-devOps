provider "aws" {
    version = "~> 3.27"
    region  = "us-east-1"
}

O references
resource "aws_instance" "dev" {
    ami = 
}
