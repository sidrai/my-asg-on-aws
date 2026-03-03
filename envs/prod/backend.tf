terraform {
  backend "s3" {
    bucket         = "your-unique-terraform-state-bucket"  # from global output
    key            = "prod/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}
