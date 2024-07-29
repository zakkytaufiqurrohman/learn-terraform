terraform {
  backend "s3" {
    bucket = "zakky"
    key    = "terraform/testing"
    region = "ap-northeast-1"
    encrypt = true
  }
}
