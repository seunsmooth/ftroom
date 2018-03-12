terraform {
 backend "s3" {
 encrypt = true
 bucket = "ft-terraform-remote-s3"
 region = "eu-west-1"
 key = "Network_routing/terraform.tfstate"
 }
}
