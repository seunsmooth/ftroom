#### creeate routing ######

#### public routing####

resource "aws_internet_gateway" "public_access" {
  vpc_id = "${aws_vpc.ft.id}"

  tags {
    Name = "FT Gateway"
  }
}


resource "aws_route_table" "public_routing" {
  vpc_id = "${aws_vpc.ft.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.public_access.id}"
  }

  tags {
    Name = "FT Public Routing"
  }
}


## associate with public subnet

resource "aws_route_table_association" "public_Subnet_association" {
  subnet_id      = "${aws_subnet.ftpublic_subnet.id}"
  route_table_id = "${aws_route_table.public_routing.id}"

}


### private routing
resource "aws_route_table" "private_routing" {
  vpc_id = "${aws_vpc.ft.id}"

  tags {
    Name = "`ft Private Routing"
  }
}


## associate with public subnet

resource "aws_route_table_association" "private_Subnet_association" {
  subnet_id      = "${aws_subnet.ftprivate_subnet.id}"
  route_table_id = "${aws_route_table.private_routing.id}"

}













