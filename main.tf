resource "aws_instance" "tomcat_local_name" {
  ami                    = data.aws_ami.amz-ami-tomcat.id
  instance_type          = var.instance_type
  key_name               = var.keypair
  security_groups = var.security_group
  user_data              = file("${path.module}/tomcat.sh")
  tags = {
    "Name" = "tomcat-server"
  }

}