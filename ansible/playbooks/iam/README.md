# Ansible for AWS IAM

These demo playbooks configures IAM (Identity and Access Management) and settings of them.
The ansible playbook **iambasic_create_user.yml** does this:
* Creating a standard password via the binary pwgen without some characters
* Creating a default IAM group with the right of changing IAM password for every IAM user
* Creating IAM users based on content of an user dictionary (user-dictionary.yml)
* Update IAM user profiles for configure the password reset enforcement via the first login

The ansible playbook **iambasic_configuration.yml** does this:
* Creating 4 IAM groups with customized IAM policies or AWS managed policies
* Adding the users out of the user dictionary (user-dictionary.yml) to the relevant IAM groups
* Using a .json based file to create a IAM customer managed policy

## Getting Started

ansible-playbook iambasic_create_user.yml
ansible-playbook iambasic_configuration.yml

The following role based access concept is described and configured in this example:

| Role or Group    | Description               | Rights                              | User 
| -------------    | ------------------------  | ----------------------------------- | ------------------ |
| aws_group_dev    | Developer Role/Group      | ECR Full Rights, S3, EC2, etc       | devuser1, devuser2 |
| aws_group_po     | Product Owner Role/Group  | AWS Config, Read-Only               | datauser           |
| aws_group_data   | Data Architect Role/Group | S3 Read Only                        | productuser        |
| aws_group_devops | DevOps Admin Role/Group   | Administrative Rights               | devopsuser         |

### Prerequisites

What things you need to install.

```
Ansible installed via pip, apt-get, etc.
The binary pwgen installed in a unix format with executible rights
```
You may need aswell a current version of the awscli. Just run this to update to the latest version:
```
$ curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
$ unzip awscli-bundle.zip
$ sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
```

## Built With

* [Ansible Documentation](https://docs.ansible.com/ansible/latest/modules/iam_module.html) - The docs where used for IAM configuration

## Authors

* **Mark Breyer** - *Initial work*
* **Guenter Schwarz** - *Initial work* - [ansible](https://github.com/aws-user-group-ulm-neu-ulm/infrastructureascode/ansible)


