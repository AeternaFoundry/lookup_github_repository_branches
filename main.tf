data "github_repository_branches" "repository_branches_lookup" {
  for_each = var.repository_branches_lookup

  repository                  = each.value.repository
  only_non_protected_branches = each.value.only_non_protected_branches
  only_protected_branches     = each.value.only_protected_branches
}

