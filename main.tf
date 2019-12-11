resource "random_pet" "example" {
  length = 3

}

output "pet_name" {
  value = "${random_pet.example.id}"
}


