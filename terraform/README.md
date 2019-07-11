# Terraform for AWS infrastructure 

Using the terraform provider modules of AWS for configure, build and remove ressources inside your AWS Account

## Getting Started

These instructions will get you a to a point, using an terraform plan/apply command to build stuff inside AWS.

* Creating and Configuration of a fully running example of having S3 and Cloudfront as a webserver [cdn](cdn)

### Prerequisites

What things you need to install.


Terraform installing via wget, unzip and move
* Log into the Ubuntu Server that will host terraform binary
* Install the necessary tools like unzip
```sh
$ sudo apt-get install unzip
```
* Download latest/desired version of the terraform binary from https://releases.hashicorp.com/terraform/
```sh
$ wget https://releases.hashicorp.com/terraform/0.11.14/terraform_0.11.14_linux_amd64.zip 
```
* Extract the downloaded file archive with unzip
```sh
$ unzip terraform_0.11.14_linux_amd64.zip
```
* Move the executable into a directory searched for executables
```sh
$ sudo mv terraform /usr/local/bin/
```
* Run it
```sh
$ terraform --version
```
## Authors

* **Guenter Schwarz** - *Initial work* - [ansible](https://github.com/aws-user-group-ulm-neu-ulm/infrastructureascode)


