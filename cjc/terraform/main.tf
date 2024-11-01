terraform {
 required_providers {
   cjc = {
     source = "hashicorp.com/edu/cjc"
     version = "1.0.1"
   }
 }
}

provider "cjc" {
}

data "cjc_buckets" "example" {}

resource "cjc_s3_bucket" "example" {
 buckets = [{
   name = "eggco-bucket-1234567"
   tags = "mybucket"
 }]
}

output "all_buckets" {
 value = data.cjc_buckets.example
}