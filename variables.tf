variable "repository_branches_lookup" {
  description = <<EOT
Map of repository_branches_lookup, attributes below
Required:
    - repository
Optional:
    - only_non_protected_branches
    - only_protected_branches
EOT

  type = map(object({
    repository                  = string
    only_non_protected_branches = optional(bool)
    only_protected_branches     = optional(bool)
  }))
}

