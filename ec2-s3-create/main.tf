resource "aws_instance" "server1" {
    ami = var.ami_id
    instance_type = var.instancetype
    key_name = var.keyname
    tags = {
        Name="Myec2"
    }
  
}
resource "aws_s3_bucket" "bucket1" {
    bucket="jenkins-terraform-may25"
  
}