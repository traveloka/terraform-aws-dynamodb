output "arn" {
  description = "The arn of the table"
  value       = "${module.idgen_seed.arn}"
}

output "id" {
  description = "The name of the table"
  value       = "${module.idgen_seed.id}"
}
