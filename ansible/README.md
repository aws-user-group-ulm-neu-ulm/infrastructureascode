# Ansible for AWS infrastructure 

Using the ansible AWS cloud modules for configure, build and remove ressources inside your AWS Account

## Getting Started

These instructions will get you a to a point, using an ansible-playbook command to build stuff inside AWS.

* Creating and Configuration of S3 buckets [s3](playbooks/s3)
* Creating and Configuration of IAM ressources [iam](playbooks/iam)
* Creating and Configuration of VPC buckets [vpc](playbooks/vpc)

### Prerequisites

What things you need to install.

```
Ansible installed via pip, apt-get, etc.
* Log into the Ubuntu Server that will host Ansible.
* Install the necessary repository with the command sudo apt-add-repository ppa:ansible/ansible.
* Update apt with the command sudo apt-get update.
* Install Ansible with the command sudo apt-get install ansible -y
* Install boto, boto3 and botocore with sudo easy_install boto3

* [Source](https://www.techrepublic.com/article/how-to-install-ansible-on-ubuntu-server-18-04/)
```

## Built With

* [Ansible Documentation](https://docs.ansible.com/ansible/latest/scenario_guides/guide_aws.html) - The docs where used
* [AWSCLI Reference](https://docs.aws.amazon.com/cli/index.html#lang/en_us) - CLI reference for AWSCLI command line tool

## Authors

* **Guenter Schwarz** - *Initial work* - [ansible](https://github.com/aws-user-group-ulm-neu-ulm/infrastructureascode)


