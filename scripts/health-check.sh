#!/bin/bash

echo "===== RHEL SERVER HEALTH CHECK ====="

echo
echo "Hostname:"
hostnamectl --static

echo
echo "System Uptime:"
uptime

echo
echo "Disk Usage:"
df -h

echo
echo "Memory Usage:"
free -h

echo
echo "IP Address:"
ip -brief address

echo
echo "Failed Systemd Services:"
systemctl --failed

echo
echo "===== HEALTH CHECK COMPLETE ====="
