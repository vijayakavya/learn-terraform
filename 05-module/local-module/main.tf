resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "${var.input}"
  }
}

variable "input" {

}