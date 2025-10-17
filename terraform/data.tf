data "aws_instances" "filtered" {
  filter {
    name   = "tag:application"
    values = [var.application]
  }
  
  filter {
    name   = "tag:environment"
    values = [var.environment]
  }
  
  filter {
    name   = "instance-state-name"
    values = ["running"]
  }
}

data "aws_instance" "details" {
  count       = length(data.aws_instances.filtered.ids)
  instance_id = data.aws_instances.filtered.ids[count.index]
}