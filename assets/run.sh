#!/bin/sh
ssh-keygen -A
/usr/bin/sshd -D &
/bin/bash
