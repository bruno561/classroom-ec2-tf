terraform {
  backend "s3" {
    bucket = "my-tf-test-bucket-bruno"
    key    = "terraform/state"
    region = "us-east-1"
  }
}