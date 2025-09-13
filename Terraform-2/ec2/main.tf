resource "aws_instance" "myresource" {
    ami = "ami-0933f1385008d33c4"
    instance_type = var.instance_type

    tags = {
        Name = "Instance-1"
    }
}
