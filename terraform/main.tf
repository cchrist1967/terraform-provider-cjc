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