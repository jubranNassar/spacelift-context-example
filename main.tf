resource "random_string" "string" {
  length = 10
}

resource "spacelift_context" "string-result" {
  name     = "string-result"
  space_id = "legacy"
}

resource "spacelift_environment_variable" "random-string-result" {
  context_id = spacelift_context.string-result.id
  name       = "random-string-result"
  value      = random_string.string.result
}
