
# terraform {
#   backend "s3" {
#     bucket = "desamistbackend"
#     dynamodb_table = "state-lock"
#     key = "global/mystatefile/terraform.tfstate"
#     region = "us-east-1"  # wehat us east one goes down
#     encrypt = true
    
#   }
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }
# }


# Configure the AWS Provider
provider "aws" {
  region = var.region     #"us-east-1"
#   access_key = "8u8u0uu8890u980"
#   secret_key = "808088008809-9i"
} 

/*
# ways you comment your code, commenting a code means any language will not read that commented line
1. using " # on the specific line"
2. using /*  at the begining and closing with */
#3. using //


# terraform init = innitialize the backend and pull pluggins for the provider, create a .terraform folder
# terraform validate=validate our code
# terraform plan==show what we will be provissioning
# terraform apply -auto-approve = actually provissioned our resources
#when you run terraform apply, it create an important file in terraform call the statefile

#terraform needs to store it's states in other for it to function
