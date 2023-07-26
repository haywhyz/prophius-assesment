terraform {
  backend "s3" {
    bucket = "prophius-s3"
    key    = "terraform/cluster.tfstate"
    region = "eu-west-1"
  }
}
