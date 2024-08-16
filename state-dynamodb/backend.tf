terraform {
  backend "s3" {
    bucket = "samplebucketaug15"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "sampltable"
    encrypt = true
  }
}