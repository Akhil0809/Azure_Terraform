module "ResourceGroup"{
    source = "./ResourceGroup"
    base_name = var.base_name
    location = var.location
}

module "NSG" {
    source = "./NSG"
    base_name = var.base_name
    resource_group_name = module.ResourceGroup.rg_name_out
    location = var.location
}

