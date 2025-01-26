#!/bin/bash
#
rm -f ansible.log
playbook_name=create_ansible_user.yml
hosts_file=h1
timestamp=$(date +"%Y%m%d_%H%M%S")
log_file="./logs/${playbook_name}_${timestamp}.log"
#
export ANSIBLE_LOG_PATH="$log_file"
export ANSIBLE_DISPLAY_SKIPPED_HOSTS=false
#
ansible-playbook $playbook_name -i $hosts_file  
#
#-e @../vars/pw.inc --vault-password-file ../vars/.vp
