variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
  description = "description"
}

# variable "domain_name" {
#   default = "haritha.shop"
# }

# variable "zone_id" {
#   default = "Z02753941Z556LBH9I6XJ"
# }

variable "environment" {
    default = "prod"
}