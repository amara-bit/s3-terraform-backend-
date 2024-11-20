terraform {
  backend "s3" {
    bucket = "amara-terraform-bucket1"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "w6-terraform-lock"
    encrypt = true
  }
}