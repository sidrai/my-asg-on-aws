module "asg_app" {
  source = "../../modules/asg-app"

  environment = "dev"
  ami_id      = "ami-0940df33750ae6e7f"  # Amazon Ubuntu ap-southeast-2
  key_name    = "asgawskey"

  asg_min_size         = 2
  asg_max_size         = 4
  asg_desired_capacity = 2
}
