provider "aws" {
  #region  =  "${var.region}"
  profile  = "${var.profile}"
}

#####Create VPC  for ft ##################

resource "aws_vpc" "ft" {
  cidr_block = "10.0.0.0/24"

  tags {
    Name = "ft VPC"
  }
}


############# we wiill be provisioning 2 subnets; private and public  ################


resource "aws_subnet" "ftpublic_subnet" {
  vpc_id     = "${aws_vpc.eft.id}"
  cidr_block = "10.0.0.0/28"

  tags {
    Name = "FT_Public"
  }
}


resource "aws_subnet" "elkprivate_subnet" {
  vpc_id     = "${aws_vpc.ft.id}"
  cidr_block = "10.0.0.112/28"

  tags {
    Name = "FT_Private"
  }
}







