# TF_AMIs-latest
Search for the latest looks in any region

- Amazon Linux 2 AMI (HVM) - Kernel 5.10, SSD Volume Type
- Debian 11 (HVM), SSD Volume Type
- Red Hat Enterprise Linux 9 (HVM), SSD Volume Type
- Ubuntu Server 22.04 LTS (HVM), SSD Volume Type
- Ubuntu Server 20.04 LTS (HVM), SSD Volume Type
- Microsoft Windows Server 2022 Base


Create file variables.tfvars or input in console

```text
  region = ""
  access_key = "..."
  secret_key = "..."
```

```text
terraform init -var-file=variables.tfvars
```
```text
terraform plan -var-file=variables.tfvars
```
```text
terraform apply -var-file=variables.tfvars
```
```text
terraform destroy -var-file=variables.tfvars
```