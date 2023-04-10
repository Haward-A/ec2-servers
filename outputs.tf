output "public_ip" {
  description = "The ip address of the ec2 instance"
  value       = "http://${aws_instance.tomcat_local_name.public_ip}:8080"

}