provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0166fe664262f664c"
instance_type = "t2.medium"
key_name = "mamathakp"
vpc_security_group_ids = ["sg-0e7f44afb3d9a7332"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "monitoring"]
}
