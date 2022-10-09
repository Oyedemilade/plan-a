terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
      
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
  profile = "default" 
}

terraform {
  backend "s3" {
    bucket = "plan-a-terraform"
    key    = "terraform/statefile.tfstate"
    region = "eu-west-2"
#    dynamodb_table = "plan-a-terraform"
  }
}