resource "null_resource" "copy-keys" {
  depends_on = [aws_instance.ec2-1]
#  connection {
#    type = "ssh"
#    user = "ubuntu"
#    private_key = "$PWD/id_rsa"
#     host = "${aws_instance.ec2-1.public_ip}"
#  }
  provisioner "local-exec" {
   command ="sleep 60 && ssh -o StrictHostKeyChecking=no ubuntu@${aws_instance.ec2-1.public_ip} && scp -i id_rsa id_rsa* ubuntu@${aws_instance.ec2-1.public_ip}:~/"
  }
}
