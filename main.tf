terraform {
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
    backend "s3" {
    # Substitua "bucket-para-salvar-o-estado" pelo nome do seu bucket S3
    bucket         = "bucket-para-salvar-o-estado"
    # O caminho do arquivo de estado dentro do bucket S3
    key            = "terraform-test.tfstate"
    # Região onde o bucket S3 está localizado
    region         = "us-east-1"
    encrypt        = true  # Ativa a criptografia
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

