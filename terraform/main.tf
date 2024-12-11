provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "instance-1" {
  ami           = "ami-0e2c8caa4b6378d8c"
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "project"
  tags ={
    Name = "grafana-server"
  }
}

resource "aws_instance" "instance-2" {
  ami           = "ami-0e2c8caa4b6378d8c"
  instance_type = "t2.micro"
  security_groups = ["default"]
  key_name = "project"
  tags ={
    Name = "node-expo"
  }
}


