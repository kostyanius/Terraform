data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


resource "aws_instance" "ec2-1" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  subnet_id	= "${aws_subnet.public.id}"

  tags = {
    Name = "ec2-1"
  }

  depends_on = ["aws_internet_gateway.gw"]
}



resource "aws_instance" "ec2-2" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  subnet_id	= "${aws_subnet.private.id}"

  tags = {
    Name = "ec2-2"
  }

  depends_on = ["aws_nat_gateway.gw"]
}


