resource "aws_dynamodb_table" "my-tf-bucket-lock" {
  name           = "my-tf-bucket-lock"
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "LockID"
    type = "S"
  }

  hash_key = "LockID"
  tags = {
    "Name" = "DynamoDB Terraform State Lock Table"
  }
}
