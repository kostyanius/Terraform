output "instance_ec2-1_ips" {
  value = aws_instance.ec2-1.public_ip
}

output "instance_ec2-2_ips" {
  value = aws_instance.ec2-2.public_ip
}

