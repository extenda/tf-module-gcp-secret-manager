variable project_id {
  description = "Project ID where the secrets are stored"
  type        = string
}

variable secrets {
  description = "Map of the secrets to be created"
  type        = map(string)
}

variable region {
  type    = string
  default = "europe-west-1"
}
