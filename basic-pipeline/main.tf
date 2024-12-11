provider "aws" {
    region     = "us-east-1"
    access_key = "x"
    secret_key = "x+"
}
resource "aws_instance" "instance-1" {
    ami = "ami-0166fe664262f664c"
    instance_type = "t2.micro"
    count = "1"
    security_groups = ["default"]
    key_name = "project"
    user_data = file("server-script.sh")
    tags = {
      Name = "versioning"
    }
}
