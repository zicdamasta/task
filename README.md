# Task 1
***Write a terraform project with the following configuration:***

- [x] Venu Provider AWS, region: eu-west-1
- [x] Terraform backend set to s3 (bucket: `"my-tf-bucket"`) and dynamodb (table: `"my-tf-bucket-lock"`)
- ❓ Create an EC2 instance running in existing VPC tagged as `"Name: Main"` and Private VPC tagged as `"Type: Private"`
    - [x] *It is not possible to attach two VPCs to one instances. Logically there should be two subnets instead - public and private*
- [x] Create 2 separate EBS volumes and attach them to an above EC2 instance

# Task 2
TODO