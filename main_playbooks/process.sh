#!/usr/bin/ansible-playbook
---
        - name: check the process state
          hosts: all
          tasks: 
                - name: checking process running or not 
                  script: /tmp/process.sh
                  register: status
                - debug: var=status.stdout
