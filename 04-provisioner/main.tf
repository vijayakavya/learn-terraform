resource "null_resource" "test" {
  provisioner "local_exec" {
    command = "echo Hello World"
  }
}