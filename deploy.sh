#!/bin/sh

ansible-playbook -i localhost, ./playbooks/deploy.yml "$@"
