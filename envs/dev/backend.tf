terraform {
  backend "s3" {
    bucket         = "your-unique-terraform-state-bucket"  # from global output
    key            = "dev/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}
