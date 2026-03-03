terraform {
  backend "s3" {
    bucket         = "asg-on-aws-terraform-state-bucket-eb11a242"  # from global output
    key            = "prod/terraform.tfstate"
    region         = "ap-southeast-2"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}
