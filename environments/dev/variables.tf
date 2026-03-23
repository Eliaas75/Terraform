variable "app_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "web_port" {
  type = number
}

variable "web_replicas" {
  type = number
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "db_port" {
  type = number
}
