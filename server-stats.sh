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


echo "------------------ Disk ------------------"

used_disk=$(df -h | grep 'C' | awk '{print $5}')
#free_disk=$(echo $used_disk | head -n2 | tail -n1 | awk '{print $3}')
echo "Used : $used_disk"
echo "Free : $((100 - ${used_disk:0:2}))"


echo "------------------ Top 5 processes By CPU usage ------------------"

ps aux --sort=pcpu | head -n 6 | tail -n 5


echo "------------------ Top 5 processes By memory usage ------------------"

ps aux --sort=size | head -n 6 | tail -n 5
