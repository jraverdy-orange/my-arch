#!/bin/env
ssh-keygen -A
nohup /usr/bin/sshd 1>/var/log/sshd.log 2>&1 &
/bin/bash
