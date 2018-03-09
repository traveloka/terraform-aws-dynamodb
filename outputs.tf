output "id" {
  description = "The name of the table"
  value       = "${aws_dynamodb_table.idgen-seed-dynamodb-table.id}"
}

output "arn" {
  description = "The arn of the table"
  value       = "${aws_dynamodb_table.idgen-seed-dynamodb-table.arn}"
}
