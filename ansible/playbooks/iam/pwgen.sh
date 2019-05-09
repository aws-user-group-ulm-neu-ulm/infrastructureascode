#!/bin/bash
#Starting password generation in a script to prevent YAML syntax error in the ansible YAML files
/usr/local/bin/pwgen  --remove-chars=\~\'\`\?\ยง\"\>\<\.\=\/\\\,\;\: -ncy -1 32