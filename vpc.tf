module "vpc" {
  source  = "app.terraform.io/jray-hashi/vpc/aws"
  version = "7"

  cidr = "172.16.16.0/24"
  name = "${prefix}-vpc"
}