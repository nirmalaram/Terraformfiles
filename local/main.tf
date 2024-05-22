locals {
  bucket-name="${var.layer}-${var.env}-nbucket"
}
resource "aws_s3_bucket" "local-bucket" {
    bucket = local.bucket-name
    tags = {
      Name=local.bucket-name
      Environment =var.env
    }
  
}