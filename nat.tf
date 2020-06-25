resource "aws_eip" "eip" {
  vpc = true
}

resource "aws_nat_gateway" "gw" {
  allocation_id = "${aws_eip.eip.id}"
  subnet_id     = "${aws_subnet.private.id}"

  tags = {
    Name = "gw NAT"
  }
}
