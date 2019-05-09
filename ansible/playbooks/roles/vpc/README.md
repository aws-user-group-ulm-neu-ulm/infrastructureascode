Role Name vpc
=========

Creates a vpc inside an AWS Account with the CIDR 10.0.0./16. This gives you an IP range 10.0.0.1 to 10.0.255.254.
You can use 65534 usable IP adresses witch is the maximum in AWS inside one vpc.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

- hosts: 127.0.0.1
  connection: local
  gather_facts: no
  vars_files:
    - group_vars/common.yml

  roles:
    - ../roles/vpc

License
-------

BSD

  - [Simplified BSD License (BSD 2-Clause License)](Simplified-BSD-License.txt)

## Authors

* **Guenter Schwarz** - *Initial work* - [ansible](https://github.com/GuenterS)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## Source of information

Book "Learn Ansible" (Author: Russ McKendrick)

