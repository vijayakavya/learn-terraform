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

output "first_fruit" {
  value = var.fruits[0]
}

output "fruit_price" {
  value = "price of apple = ${var.fruit_price["apple"]}"
}

variable "url" {}