resource "aws_instance" "foreach" {
    ami = var.ami-id
    instance_type = var.instance_type
    key_name = var.key-name
    for_each = toset(var.environment)
    tags = {
      Name=each.value
    }
  
}