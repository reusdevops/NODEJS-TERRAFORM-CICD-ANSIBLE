output "instance_ips" {
  description = "Private IP addresses of filtered instances"
  value       = [for instance in data.aws_instance.details : instance.private_ip]
  sensitive = true
  
}

output "instance_public_ips" {
  description = "Public IP addresses of filtered instances"
  value       = [for instance in data.aws_instance.details : instance.public_ip]
  sensitive = true
}

output "instance_details" {
  description = "Complete instance details"
  value = {
    private_ips  = [for instance in data.aws_instance.details : instance.private_ip]
    public_ips   = [for instance in data.aws_instance.details : instance.public_ip]
    instance_ids = data.aws_instances.filtered.ids
  }
  sensitive = true
}