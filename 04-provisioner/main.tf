resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "echo Hello World"
  }
}

resource "null_resource" "test1" {
  provisioner "local-exec" {
    command = <<EOF
echo Hello World
pwd
ls
EOF
  }
}
