# Ansible for AWS VPC

This playbook configures the AWS VPC ressources (network, subnets, firewalling)

## Getting Started

ansible-playbook site.yml

### Prerequisites

What things you need to install.

Ansible installed via pip, apt-get, etc.
You may need aswell a current version of the awscli. Just run this to update to the latest version:
```
$ curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
$ unzip awscli-bundle.zip
$ sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
```
Adjust the common.yml file with you need and change the default subnet main.yml.

## Built With

* [Ansible Documentation](https://docs.ansible.com/ansible/latest/modules/ec2_vpc_net_module.html) - The docs where used for vpc configuration

## Authors

* **Guenter Schwarz** - *Initial work* - [ansible](https://github.com/aws-user-group-ulm-neu-ulm/infrastructureascode)

## Source of information

Book "Learn Ansible" (Author: Russ McKendrick)

