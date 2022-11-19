# Task 1
**Write a terraform project with the following configuration**

* [x] Venu Provider AWS, region: eu-west-1
* [x] Terraform backend set to s3 (bucket: `"my-tf-bucket"`) and dynamodb (table: `"my-tf-bucket-lock"`)
* ❓ Create an EC2 instance running in existing VPC tagged as `"Name: Main"` and Private VPC tagged as `"Type: Private"` 🤔
    - [x] *It is not possible to attach two VPCs to one instances. Logically there should be two subnets instead - public and private*
* [x] Create 2 separate EBS volumes and attach them to an above EC2 instance
## Prerequisites
- Terraform >= v1.3.4
- Mac, Linux OS or WSL
## Instructions ⚙️

### To run
1. Put your credentials to `~/.aws/credentials`. You can check `credentials-example` how it should look like
2. Git clone this repo
3. `cd task1`
4. `terraform init` -> `terraform plan` -> `terraform apply`
7. If all went smootly and resources are created uncomment `s3 backend` block in `main.tf`
8. Run `terraform init` and then `terraform apply` 🚀

### To destroy 🔥
1. `terraform destroy`
2. delete s3 bucket manually or via cli

### PROBLEMS?
 Error: ConditionalCheckFailedException or Error: Backend configuration changed
- `terraform init -migrate-state -lock=false`



# Task 2
TODO