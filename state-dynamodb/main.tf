resource "aws_s3_bucket" "samplebucket" {
    bucket = "samplebucketaug15"
  
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.samplebucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_dynamodb_table" "sampledynamo" {
  name           = "sampltable"
  read_capacity  = 10
  write_capacity = 10
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
resource "aws_instance" "first" {
    ami = "ami-0a4408457f9a03be3"
    instance_type = "t2.micro"
    key_name = "Mumbai-key"
    tags = {
      Name = "firstec2"
    }
  
}