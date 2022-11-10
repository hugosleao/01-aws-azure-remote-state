variable "location" {
  description = "Variável que indica a region onde os recursos serão criados"
  type        = string
  default     = "East US"
}

variable "account_tier" {
  description = "Tier da Storage account na Azure"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação de dados da Storage Account"
  type        = string
  default     = "LRS"
}
