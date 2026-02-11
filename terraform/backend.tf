terraform {
  backend "s3" {
    bucket         = "sganadi-terraform-state"
    key            = "3-tier-architecture/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

