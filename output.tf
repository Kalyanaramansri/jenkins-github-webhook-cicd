output "instance_public_ips" {
  value = {
    for key, instance in aws_instance.web :
    key => instance.public_ip
  }
}