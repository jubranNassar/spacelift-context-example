resource "random_string" "this" {
  length  = 10
  special = false
}

resource "spacelift_context" "string-result" {
  name     = "string-result"
  space_id = "legacy"
}

resource "spacelift_environment_variable" "random-string-result" {
  context_id = spacelift_context.string-result.id
  name       = "random-string-result"
  value      = "${random_string.this.id}"
}

output "string" {
  value = random_string.this.id
}
