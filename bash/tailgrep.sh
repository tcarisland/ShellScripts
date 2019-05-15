#!/bin/bash -x

# Useful for opening logfiles and filter the results
tail -f $1 | grep "$2"
