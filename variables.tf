variable "data_safe_sql_firewall_policy_analytics_lookup" {
  description = <<EOT
Map of data_safe_sql_firewall_policy_analytics_lookup, attributes below
Required:
    - compartment_id
Optional:
    - access_level
    - compartment_id_in_subtree
    - group_by
    - security_policy_id
    - state
    - time_ended
    - time_started
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id            = string
    access_level              = optional(string)
    compartment_id_in_subtree = optional(bool)
    group_by                  = optional(list(string))
    security_policy_id        = optional(string)
    state                     = optional(string)
    time_ended                = optional(string)
    time_started              = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

