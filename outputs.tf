output "latest_ubuntu_20_x86-64_id" {
    description = "AMI ID"
    value = data.aws_ami.latest_ubuntu_20_x86-64.id
}

output "latest_ubuntu_20_x86-64_name" {
    description = "AMI name"
    value = data.aws_ami.latest_ubuntu_20_x86-64.name
}
###
output "latest_debian-11_x86-64_id" {
    description = "AMI ID"
    value = data.aws_ami.latest_debian-11_x86-64.id
}

output "latest_debian-11_x86-64_name" {
    description = "AMI name"
    value = data.aws_ami.latest_debian-11_x86-64.name
}
###