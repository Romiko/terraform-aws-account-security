variable "account_name" {
  description = "Account name (slug)"
}

variable "org_name" {
  description = "Name for this organization (slug)"
}

variable "idp_account_id" {
  description = "Account ID of IDP account"
  default     = ""
}

variable "idp_admin_trusts" {
  type        = "list"
  description = "List of role ARNs to trust as external IDPs"
  default     = []
}

variable "idp_admin_trust_names" {
  type        = "list"
  description = "Names for external IDPs for roles (must match idp_trusts)"
  default     = []
}

variable "role_max_session_duration" {
  description = "Maximum CLI/API session duration"
  default     = "43200"
}

variable "ssm_account_ids" {
  type        = "list"
  description = "List of account IDs to save in SSM"
  default     = []
}

variable "ssm_account_names" {
  type        = "list"
  description = "List of account names (slugs) to save in SSM, must match ssm_account_ids"
  default     = []
}

variable "iam_ci_mgmt" {
  description = "Create IAM instance profile and user for use with CI workers deployed to the account"
  default     = false
}

variable "iam_ci_mgmt_account_id" {
  description = "Account ID of MGMT account for use with IAM CI role. It creates IAM role to assume from MGMT account for CI deployments"
  default     = ""
}
