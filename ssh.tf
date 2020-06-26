resource "aws_key_pair" "ec2key" {
  key_name   = "ec2-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCz+v2ow2kg36yx/l1CMpRpd4ROY2CuVtqJ5lJCrWbvYxytvmQe62ZR3Lq46p7xZncGjWlEiYeWJM5tSFNfgp+xpw+l+SiTeIkicsbfu0+9MrVcEa/bNs5nRPMHYexlVC/ylz879+sQ1fFD317ANwVwhaEKp4Rx50nXCC923mAJLv05xcG0Po+aExwQE8sOGsYdKFe2YDTmI+vR37LUPWdJGj1Wc/zxRRpf0PZCigJRLMWIpJAYSxUoE/5au5k68YcC0i/gtbz632Dr3AXK/NCVnsFTCt9HZ6cg4XB5nYzkSzp/0vT8hkf1W4DC832EOdAPfNN7ykrDrz6SUQjY+mPX ubuntu@DESKTOP-ALL01O7"
}
