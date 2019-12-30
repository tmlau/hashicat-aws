terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "jray-hashi"
    workspaces {
      name = "hashicat-aws"
    }
  }
}