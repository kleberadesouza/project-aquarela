terraform {
  backend "s3" {
    # nome do bucket
    bucket         = "meu-bucket-terraform-state"
    
    # caminho do arquivo de estado dentro do bucket
    key            = "eks-projeto/terraform.tfstate"
    
    # Região do bucket
    region         = "us-east-1"
    
    # nome da tabela DynamoDB
    dynamodb_table = "terraform-locks"
    
    # Ativa a criptografia do arquivo de estado
    encrypt        = true
  }
}