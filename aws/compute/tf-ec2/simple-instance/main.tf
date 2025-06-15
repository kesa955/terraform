provider "aws"{
    region = "ap-south-1"
}

resource "aws_instance" "tf-test-1" {
    instance_type = "t2.micro"
    subnet_id = "subnet-06f9a6abaf21580a1"
    ami = "ami-0b09627181c8d5778"
    vpc_security_group_ids = ["sg-03e8f52d3601826be"]
    tags = {
        Name   = "tf-test-1"
        Environment = "test"
  }
}