resource "aws_instance" "countInstance" {
    ami = var.ami-id
    instance_type = var.instance-type
    key_name = var.key-name
    count=3
    tags = {
        #Name="countinstance"
      #Name= "countinsance-${count.index}"
      Name=var.environment[count.index]

    }
  
}