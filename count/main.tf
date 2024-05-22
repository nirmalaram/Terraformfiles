resource "aws_instance" "countInstance" {
    ami = var.ami-id
    instance_type = var.instance-type
    key_name = var.key-name
    count=length(var.environment)
    tags = {
        #Name="countinstance"
      #Name= "countinsance-${count.index}"
      Name=var.environment[count.index]

    }
  
}