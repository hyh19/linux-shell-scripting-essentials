#!/bin/bash
# Filename: awk_embed.sh
# Description: Demonstarting using awk in shell script

# Fetching 4th column of command df output
df -h |awk '{ print $4 }'
