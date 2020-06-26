output "instance_ec2-1_igw_ip" {
  value = aws_instance.ec2-1.public_ip
}

output "instance_ec2-2_nat_ip" {
  value = aws_eip.eip.public_ip
}

