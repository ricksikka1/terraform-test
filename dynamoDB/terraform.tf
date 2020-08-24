provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-2"
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terraform-lock"
  read_capacity  = 4
  write_capacity = 4
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}