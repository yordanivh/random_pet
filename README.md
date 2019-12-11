# random_pet
This repo contains code that shows how the random_pet resource works.

## What does the random provider do 

Random provider generates a random sequence of characters. It keeps this sequence steady until we change something in its configuration

## What this code does

This code will generate a random_pet value and it is listed by using the output section of the code.
The length argument defines the number of words the pet name should consist of.

## Why use this code

With this code you can practicaly see the use of the random_pet resource

## How to use the code in this repo

 * Install Terraform
 ```
 https://www.terraform.io/downloads.html
 ```
 
 * Clone this repository
 ```
 git clone https://github.com/yordanivh/random_pet
 ```
 
 * Change directory
 ```
 cd random_pet
 ```
 
 * Initialize the project ( Terraform will download provider plugins)
 
 ```
 terraform init
 ```
 
 * Plan the operation so that you see what actions will taken
 
 ```
 terraform plan
 ```
 
 * Run Terraform apply to create the resources
 ```
 terraform apply
 ```

* To destroy the created resources

 ```
 terraform destroy
 ```

## Sample Output
## What is expected

1.Init command will download all needed plugins

```
random_pet (newbranch) $ terraform init

Initializing the backend...

Initializing provider plugins...
- Checking for available provider plugins...
- Downloading plugin for provider "random" (hashicorp/random) 2.2.1...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.random: version = "~> 2.2"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```
2. Plan command will show you a plan of action
```
random_pet (newbranch) $ terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # random_pet.example will be created
  + resource "random_pet" "example" {
      + id        = (known after apply)
      + length    = 3
      + separator = "-"
    }

Plan: 1 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.
```
3. Apply will create the resource. You can see the pet name at the end of the command.

```
random_pet (newbranch) $ terraform apply

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # random_pet.example will be created
  + resource "random_pet" "example" {
      + id        = (known after apply)
      + length    = 3
      + separator = "-"
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

random_pet.example: Creating...
random_pet.example: Creation complete after 0s [id=rightly-humane-rat]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

pet_name = rightly-humane-rat
```
4. Destroy command will remove the resource
```
random_pet (newbranch) $ terraform destroy
random_pet.example: Refreshing state... [id=rightly-humane-rat]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # random_pet.example will be destroyed
  - resource "random_pet" "example" {
      - id        = "rightly-humane-rat" -> null
      - length    = 3 -> null
      - separator = "-" -> null
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

random_pet.example: Destroying... [id=rightly-humane-rat]
random_pet.example: Destruction complete after 0s

Destroy complete! Resources: 1 destroyed.
```

