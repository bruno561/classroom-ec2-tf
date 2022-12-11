# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

module "ec2" {
  source        = "../module/ec2"
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
}