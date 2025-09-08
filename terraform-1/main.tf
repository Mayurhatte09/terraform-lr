resource "aws_instance" "myresource" {
    ami = "ami-0933f1385008d33c4"
    instance_type = "t3.micro"

    tags = {
        Name = "Instance-1"
    }

}
