variable "ami-id" {
    default = "ami-0bb84b8ffd87024d8"
    type = string
  
}
variable "instance-type" {
    default = "t2.micro"
    type = string
  
}
variable "key-name" {
    default = "ec2-key"
    type = string
  
}
variable "environment" {
    type = list(string)
    default = [ "inst-1","inst-2","inst-3" ]
  
}