terraform {
  backend "s3" {
    bucket = "terraform-backend-terraformbackends3bucket-aa5ybwu0trp7"
    key = "web-server"
    region = "us-east-1"
    dynamodb_table = "terraform-backend-TerraformBackendDynamoDBTable-SC61105MHYSF"
  }
}