#!/bin/bash

cat /mnt/ansible-sshkeys/ansible.pub >> /root/.ssh/authorized_keys

exec /usr/sbin/sshd -D
