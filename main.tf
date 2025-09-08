resource "aws_instance" "myresource" {
    ami = "ami-0933f1385008d33c4"
    instance_type = "t3.micro"

    tags = {
        Name = "Instance-1"
    }
}

resource "aws_vpc" "my-vpc" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"

    tags = {
        Name = "vpc-01"
    }
  
}

resource "aws_subnet" "singapur-subnet-1" {
    vpc_id = aws_vpc.my-vpc.id
    cidr_block = "10.0.1.0/24"
    tags = {
        Name = "my-subnet-01"
    }
  
}

resource "aws_subnet" "singapur-subnet-2" {
    vpc_id = aws_vpc.my-vpc.id
    cidr_block = "10.0.2.0/24"
    tags = {
        Name = "my-subnet-02"
    }
  
}