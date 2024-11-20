variable "instances" {
    type    = map 
    default = {
        mysql   = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}


variable "domain_name" {
  default = "haritha.shop"
}

variable "zone_id" {
  default = "Z0224168N601FREI1AO2"
}