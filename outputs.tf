output "repository_branches_lookup_id" {
  description = "Map of id values across all repository_branches_lookup, keyed the same as var.repository_branches_lookup"
  value       = { for k, v in data.github_repository_branches.repository_branches_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repository_branches_lookup_branches" {
  description = "Map of branches values across all repository_branches_lookup, keyed the same as var.repository_branches_lookup"
  value       = { for k, v in data.github_repository_branches.repository_branches_lookup : k => v.branches if v.branches != null && length(v.branches) > 0 }
}
output "repository_branches_lookup_only_non_protected_branches" {
  description = "Map of only_non_protected_branches values across all repository_branches_lookup, keyed the same as var.repository_branches_lookup"
  value       = { for k, v in data.github_repository_branches.repository_branches_lookup : k => v.only_non_protected_branches if v.only_non_protected_branches != null }
}
output "repository_branches_lookup_only_protected_branches" {
  description = "Map of only_protected_branches values across all repository_branches_lookup, keyed the same as var.repository_branches_lookup"
  value       = { for k, v in data.github_repository_branches.repository_branches_lookup : k => v.only_protected_branches if v.only_protected_branches != null }
}
output "repository_branches_lookup_repository" {
  description = "Map of repository values across all repository_branches_lookup, keyed the same as var.repository_branches_lookup"
  value       = { for k, v in data.github_repository_branches.repository_branches_lookup : k => v.repository if v.repository != null && length(v.repository) > 0 }
}

