provider "google" {
  credentials = "${file("./creds/serviceaccount.json")}"
  project     = var.project_id
  region      = var.location
}

provider "google-beta" {
  credentials = "${file("./creds/serviceaccount.json")}"
  project     = var.project_id
  region      = var.location
}

/***
terraform {
  backend "remote" {
    organization = "modus-demo"
    workspaces {
      name = "aws-vpc-qa-eu-west"
    }
  }
}
***/
