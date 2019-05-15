#!/bin/bash

# Yes I know ifconfig is deprecated on Linux, but the ip command doesn't exist for macOS.
# This command prints the IP Address and copies it to clipboard
ifconfig en0 | egrep -o 'inet (.*?)n' | egrep -o '(([0-9]{2,3})(\.){0,1}){4}' | tee /dev/tty | pbcopy
