locals{
    domain_name = "haritha.shop"
    zone_id = "Z02753941Z556LBH9I6XJ"
    instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
    }
# count.index will not work in locals
    