provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "adeola-demo-bucket-123456"
}

terraform {
  backend "s3" {
    bucket       = "adeola-devops-tf-state-prod"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}