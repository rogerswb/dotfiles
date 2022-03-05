#!/bin/bash

# Setup GPG SSH logins using GPG smart card devices
eval $(gpg-agent --quiet --daemon --enable-ssh-support)
export GPG_TTY=$(tty)
export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"

