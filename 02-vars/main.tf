variable "fruit" {
  default = "apple"
}

variable "fruits" {
  default = [ "apple", "banana" ]
}

variable "fruit_price" {
  default = {
    apple = 10
    banana = 20
  }
}

output "fruit" {
  value = var.fruit
}