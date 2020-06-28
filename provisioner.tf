resource "null_resource" "copy-keys" {
 
#  connection {
#    type = "ssh"
#    user = "ubuntu"
#    private_key = "$PWD/id_rsa"
#     host = "${aws_instance.ec2-1.public_ip}"
#  }
  provisioner "local-exec" {
   command ="yes | scp -i id_rsa id_rsa* ubuntu@${aws_instance.ec2-1.public_ip}:~/"
  }
}
