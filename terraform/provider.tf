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
