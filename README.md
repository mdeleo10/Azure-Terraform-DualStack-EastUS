# This Terraform template deploys in Azure a Dual Stack (IPv4/IPv6) Ubuntu 20.04 LTS Virtual Machine

Steps needed before deploying
- edit the variables.tf file for region, Admin user and Resource Group prefix
- edit main.tf for rsa_id.pub location
- edit azure-ubuntu-boot.sh for initialization commands (follows cloud-init rules)
- az login
- terraform init
- terraform apply

The admin password is random generated and can only be retrieved after "terraform apply" using "terraform output admin_password" if needed. Since the ssh public key is installed, it shouldn't be needed and can easily be changed.

Note: Change "disable_password_authentication     = true" for production.

The file azure-ubuntu-boot.sh contains bootstrapping commands to configure the server such as:
- apt update
- apt upgrade
- apt install net-tools
- apt install php (for the web page)
- apt install apache2
- configure php mod for apache
- copy from git repository an index.php file

