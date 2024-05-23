variable "ami-id" {
    default = "ami-0bb84b8ffd87024d8"
    type = string
  
}
variable "instance_type" {
    default = "t2.micro"
    type = string
  
}
variable "key-name" {
    default = "NVirginiakey"
    type = string
  
}
variable "environment" {
    type = list(string)
    default = ["for-inst1","for-inst-2","for-inst-3"]
  
}