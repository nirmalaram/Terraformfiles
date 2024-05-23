resource "aws_instance" "foreach" {
    ami = var.ami-id
    instance_type = var.instance_type
    key_name = var.key-name
    for_each = toset(var.environment)
    tags = {
      Name=each.value
    }
  
}
#resource block for creating security group using for-each
resource "aws_security_group" "foreach-sg" {
    name = "foreach-sg"
    description = "allow tls inbound traffic and all outbound traffic"
    #vpc_id = aws_vpc.nir-vpc.id
    tags = {
      Name="foreach-sg"

    }
    ingress = [
        for port in [80,443,22,8080]:{
          description = "Inbound Rules"
          from_port = port
          to_port = port
          protocol = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
          ipv6_cidr_blocks=[]
          prefix_list_ids=[]
          security_groups=[]
          self=false

        }
    ]
  }

resource "aws_vpc_security_group_egress_rule" "egress" {
    security_group_id = aws_security_group.foreach-sg.id
    cidr_ipv4 = "0.0.0.0/0"
    ip_protocol = "-1" #semantically equivalent to all ports
  
}
