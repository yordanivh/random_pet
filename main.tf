resource "random_pet" "example" {
  length = var.number

}

output "pet_name" {
  value = "${random_pet.example.id}"
}


