resource "random_string" "string" {
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
  value      = tostring(random_string.string.id)
}

output "string" {
  value = random_string.string.id
}
