provider "aws" {
      
}
data "aws_subnet" "existingSN" {
    id = "subnet-0d2f8456d76ba239a"
  
}
data "aws_security_group" "existingSG" {
    id = "sg-02dad2c129c2bfaa6"
  
}
resource "aws_instance" "ansible" {
    subnet_id = data.aws_subnet.existingSN.id
    security_groups = [data.aws_security_group.existingSG.id]
    ami="ami-00beae93a2d981137"
    instance_type = "t2.micro"
    key_name = "NVirginiakey"
    count=3
    tags = {
      Name="Node-${count.index}"
    }
  
}
