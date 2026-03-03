module "asg_app" {
  source = "../../modules/asg-app"

  environment = "prod"
  ami_id      = "ami-0940df33750ae6e7f"  # Amazon Ubuntu ap-southeast-2
  key_name    = "asgawskey"

  asg_min_size         = 4
  asg_max_size         = 10
  asg_desired_capacity = 6
}
