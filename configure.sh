#!/bin/bash

ansible-playbook --diff -i inventory.ini playbook.yml
