module "asg_app" {
  source = "../../modules/asg_app/"

  environment = "dev"
  ami_id      = "ami-0818a4d7794d429b1"  # Amazon Ubuntu ap-southeast-2
  key_name    = "MyCDKKey"

  asg_min_size         = 2
  asg_max_size         = 4
  asg_desired_capacity = 2
}
