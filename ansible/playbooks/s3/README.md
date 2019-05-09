# Ansible for AWS S3

This playbook configures S3 buckets and the settings of them

## Getting Started

ansible-playbook s3basic_configuration.yml

The following buckets where created (Prefix: "foo-your-userdefined-name-com-"):

### config
  - Bucket for AWS Config which contain details for the resources that AWS Config records

### accesslogs
  - Bucket for accesslogs from puts and gets of all S3 objects

### tfstate
  - Bucket for your terraform backend with versioning enabled

### inventory
  - You can point every S3 bucket to store object meta information into this bucket

### app
  - This is the only S3 bucket for real data (projects, apps, websites, pictures, etc.)

### temp
  - In this bucket all objects will be deleted after 90 days

### test
  - In this bucket all objects will be deleted after 1 day

### Prerequisites

What things you need to install.

Ansible installed via pip, apt-get, etc.
You may need aswell a current version of the awscli. Just run this to update to the latest version:
```
$ curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
$ unzip awscli-bundle.zip
$ sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
```

## Built With

* [Ansible Documentation](https://docs.ansible.com/ansible/latest/modules/s3_bucket_module.html) - The docs where used for S3 configuration
* [AWSCLI Reference](https://docs.ansible.com/ansible/latest/modules/s3_bucket_module.html) - CLI reference for AWSCLI command line tool

## Authors

* **Guenter Schwarz** - *Initial work* - [ansible](https://github.com/aws-user-group-ulm-neu-ulm/infrastructureascode)



