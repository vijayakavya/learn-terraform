terraform {
  backend "s3" {
    bucket  = "terraform-b26"
    key     = "07-state/terraform.tfstate"
    region  = "us-east-1"
  }
}

resource "null_resource" "null" {
  provisioner "local-exec" {
     command = "echo Hello World"
  }
}