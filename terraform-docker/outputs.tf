output "container-name" {
    value = module.container[*].container-name
    description = "The name of the container"
}

output "IP-Address" {
    value = flatten(module.container[*].IP-Address)
    description = "The IP address and external port of the container"
}
