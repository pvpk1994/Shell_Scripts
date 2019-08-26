#!/bin/bash

# Get number of cpus on the system
no_cpus=$( ls -d /sys/devcies/system/cpu/cpu[[:digit:]]* | wc -w )
echo "Number of cpus $no_cpus"

