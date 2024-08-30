variable "region" {}
variable "id_imagen" {}
variable "tipo_instancia" {}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "foo" {
  ami           = var.id_imagen
  instance_type = var.tipo_instancia
}

