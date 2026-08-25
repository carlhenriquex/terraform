variable "region" {
    default = "sa-east-1"
    type = string
    description = "Regiao onde os arquivos serao criados"
}

variable "bucket_name" {
    type = string
    description = "Nome do meu bucket"
}