#!/bin/bash
set -x

if [[ -z $@ ]];then
	
	echo "no arguments passed to script"
else
	echo "aruguments passed are $@"

fi

ssh -l root ansible-master """cd /etc/ansible/; ansible-playbook -i hosts $1 -vv\\"""


echo "this is from the main branch"


exit 0
