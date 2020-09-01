provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-2"
  version    = "~> 3.0"
}

resource "aws_s3_bucket" "b" {
  bucket = "terraformbackend"
}
