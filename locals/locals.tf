locals {
    ami_id = ""
    instance_type = var.instance_name == "PROD" ? t3.small : t3.micro
}