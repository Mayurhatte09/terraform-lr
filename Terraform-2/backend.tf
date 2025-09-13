terraform {
  
  backend "s3" {
    bucket = "mh-basket-01" 
    key = "terraform-bucker"
    region = "ap-southeast-1"
  
  }
   
}