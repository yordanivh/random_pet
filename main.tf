resource "random_pet" "example" {
  length = 2
}

output "value" {
  value = random_pet.example.id
}     

