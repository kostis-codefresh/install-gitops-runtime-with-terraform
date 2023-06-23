
variable "cf_token" {
  type    = string
  default = ""
  sensitive = true
  description = "Codefresh access token. Create it from the Codefresh UI"
}

variable "cf_account_id" {
  type    = string
  default = ""
  sensitive = false
  description = "Codefresh user Account ID. Get it from the Codefresh UI"
}


