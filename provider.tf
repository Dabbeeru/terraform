# Configure the AWS Provider
provider "aws" {
  access_key = "AKIAX372F4JUOQ23XPIZ"
  secret_key = "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"
  version = "v2.42.0"
  region  = "us-east-2"
}

# Create a VPC
resource "aws_vpc" "lax" {
  cidr_block = "10.0.0.0/16"
}
