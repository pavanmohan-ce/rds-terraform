provider "aws" {
    region="us-east-1"
}

terraform {
  backend "s3" {
    key            = "demo/rds/terraform.tfstate"
    region         = "us-east-1"
    bucket         = "pavan-us-east-1-tfstate"
    encrypt        = true
  }
}
