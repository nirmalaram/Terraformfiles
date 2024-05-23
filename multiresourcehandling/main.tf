resource "aws_instance" "mrinstance" {
    ami="ami-0bb84b8ffd87024d8"
    instance_type = "t2.micro"
    key_name = "NVirginiakey"
    tags = {
      Name="MRinstance"
    }
  
}
resource "aws_s3_bucket" "MRbucket" {
    bucket = "mrbucketmay23"
  
}