output "arn" {
  description = "The arn of the table"
  value       = "${aws_dynamodb_table.idgen_seed_dynamodb_table.arn}"
}

output "id" {
  description = "The name of the table"
  value       = "${aws_dynamodb_table.idgen_seed_dynamodb_table.id}"
}
