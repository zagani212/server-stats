#!/bin/bash

echo "------------------ CPU    ------------------"
cpu=$(uptime | awk '{print $9}' | cut -d, -f1)
echo "CPU : $cpu"

echo "------------------ Memory ------------------"

free_mem=$(free | head -n2 | tail -n1 | awk '{print $4}')
used_mem=$(free | head -n2 | tail -n1 | awk '{print $3}')
total_mem=$(free | head -n2 | tail -n1 | awk '{print $2}')

echo "Free : $((free_mem*100/total_mem))%"
echo "Used : $((used_mem*100/total_mem))%"