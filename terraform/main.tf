provider "aws" {
region = "ap-south-1"
access_key = "AKIASWA47RVUPSNJLO4B"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-012b9156f755804f5"
instance_type = "t2.micro"
key_name = "nwkpp"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "project-instance"
Environment = "dev"
}
}
