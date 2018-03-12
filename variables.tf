variable "product_domain" {
  description = "The name of the product domain"
  type        = "string"
}

variable "service_name" {
  description = "The name of the service this DynamoDB table belongs to"
  type        = "string"
}

variable "environment" {
  description = "The environment this DynamoDB table belongs to"
  type        = "string"
}

variable "description" {
  description = "The description of this DynamoDB table"
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
