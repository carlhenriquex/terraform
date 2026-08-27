variable "region" {
    default = "sa-east-1"
    type = string
    description = "Regiao onde os arquivos serao criados"
}

variable "bucket_name" {
    type = string
    description = "Nome do meu bucket"
}

variable "ambiente" {
  type = string
  description = "O ambiente de implantação do projeto."
  default = "dev"
  
  sensitive = false
  nullable = false
  ephemeral = false

  # Garante que o usuário só digite uma das três opções válidas
  validation {
    condition = contains(["dev", "staging", "prod"], var.ambiente)
    error_message = "O ambiente deve ser obrigatoriamente 'dev', 'staging' ou 'prod'."
  }
}