terraform {
 required_providers {
   cjc = {
     #source = "hashicorp.com/edu/cjc"
     source = "cchrist1967/cjc"
     version = "0.0.2"
   }
 }
}

provider "cjc" {
}

data "cjc_buckets" "example" {}

resource "cjc_s3_bucket" "example" {
 buckets = [{
   name = "eggco-bucket-987654321"
   tags = "mybucket"
 }]
}

output "all_buckets" {
 value = data.cjc_buckets.example
}