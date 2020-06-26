resource "aws_default_route_table" "default" {
  default_route_table_id = "${aws_vpc.main.default_route_table_id}"

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = "${aws_internet_gateway.igw.id}"
  }

#  route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = "${aws_nat_gateway.ngw.id}"
#  }
  


  tags = {
    Name = "default route table"
  }
}



resource "aws_route_table" "nat" {
  vpc_id = "${aws_vpc.main.id}"
  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = "${aws_nat_gateway.ngw.id}"
  }


  
  tags = {
    Name = "nat route table"
  }
}
