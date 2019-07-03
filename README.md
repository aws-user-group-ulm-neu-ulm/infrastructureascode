# AWS Infrastructure as Code
Examples and Demos for AWS services build via IaC from the [AWS UserGroup Ulm/Neu-Ulm](https://www.meetup.com/de-DE/AWS-User-Group-Ulm-Neu-Ulm/). 

* Examples with ansible [How can you use it with ansible](ansible/README.md)
* Examples with terraform [How can you use it with terraform](terraform/README.md)

Installing Visual Studio Code on Ubuntu

* First, update the packages index and install the dependencies by typing
```sh
$ sudo apt update
$ sudo apt updatesudo apt install software-properties-common apt-transport-https wget
```
* Next, import the Microsoft GPG key using the following wget command:
```sh
$ wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
```
* And enable the Visual Studio Code repository by typing
```sh
$ sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
```
* Once the repository is enabled, install the latest version of Visual Studio Code with
```sh
$ sudo apt update
$ sudo apt install code
```
* That’s it. Visual Studio Code has been installed on your Ubuntu desktop and you can start using it
* Starting Visual Studio Code.Either from the command line by typing code or by clicking on the VS Code icon (Activities -> Visual Studio Code).

## Authors

* **Guenter Schwarz** - *Initial work* - [ansible](https://github.com/aws-user-group-ulm-neu-ulm/infrastructureascode)