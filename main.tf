resource "aws_s3_bucket" "seunawoga" {
  bucket = var.domain_name
  acl    = "public-read"
  
  website {
    index_document = "index.html"
    error_document = "error.html"

  }
}

resource "aws_s3_bucket_object" "index" {
  bucket       = var.domain_name
  acl          = "public-read"
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html"
}

#esource "aws_s3_bucket_object" "error" {
# bucket       = var.domain_name
# key          = "error.html"
# source       = "error.html"
# content_type = "text/html"
