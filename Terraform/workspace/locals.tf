locals {
  ami_id = data.aws_ami.joindevops
  environment = terraform.workspace
}