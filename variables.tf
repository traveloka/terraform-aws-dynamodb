variable "product_domain" {
  description = "The name of the product domain"
  type        = "string"
}

variable "write_capacity" {
  description = "The write capacity of the table"
  type        = "string"
  default     = 5
}

variable "read_capacity" {
  description = "The read capacity of the table"
  type        = "string"
  default     = 1
}
