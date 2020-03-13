resource "random_pet" "example" {
  length = 1

}

output "pet_name" {
  value = "${random_pet.example.id}"
}


