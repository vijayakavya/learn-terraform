resource "null_resource" "null" {
  provisioner "local-exec" {
    command = "echo Hello World - ${var.env} Enivironment"
  }
}

variable "env" {}

terraform {
  backend "s3" {

  }
}