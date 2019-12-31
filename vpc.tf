module "vpc" {
  source = "app.terraform.io/jray-hashi/vpc/aws"

  name = "simple-example"

  cidr = "10.10.0.0/16"

  azs             = ["${var.region}a"]
  private_subnets = ["10.10.1.0/24"]
  public_subnets  = ["10.10.101.0/24"]

  enable_ipv6 = true

  enable_nat_gateway = false
  single_nat_gateway = false

  public_subnet_tags = {
    Name = "overridden-name-public"
  }

  tags = {
    Owner       = "${var.prefix}-hashicorp"
    Environment = "${var.prefix}-instruqt-workshop"
  }

  vpc_tags = {
    Name = "vpc-name"
  }
}