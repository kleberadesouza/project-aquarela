terraform {
  backend "s3" {
    # nome do bucket
    bucket         = "aquarela-desafio-kleber"
    
    #  do arquivo de estado dentro do bucket
    key            = "eks-kleber/terraform.tfstate"
    
    # Região do bucket
    region         = "us-west-1"
    
    #  nome da tabela DynamoDB
    dynamodb_table = "terraform-lock-aquarela-kleber"
    
    # Ativa a criptografia do arquivo de estado
    encrypt        = true
  }
}