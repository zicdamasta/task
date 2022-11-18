/*# Backend must remain commented until the Bucket
 and the DynamoDB table are created. 
 After the creation you can uncomment it,
 run "terraform init" and then "terraform apply" */

# terraform {
#   backend "s3" {
#     bucket         = "zicdamasta-my-tf-bucket"
#     key            = "terraform.tfstate"
#     region         = "eu-west-1"
#     dynamodb_table = "my-tf-bucket-lock"
#   }
# }
