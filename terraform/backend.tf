terraform {
  required_providers {
    aws = {
      version = "4.40.0"
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "my-tf-test-bucket-bruno"
    key    = "terraform/state"
    region = "us-east-1"
  }
}

# resource "aws_s3_bucket" "bucket" {
#   bucket = "my-tf-test-bucket-bruno"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }

# resource "aws_s3_bucket_acl" "example" {
#   bucket = aws_s3_bucket.bucket.id
#   acl    = "private"
# }