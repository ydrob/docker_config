#!/bin/bash
DNS_TEST="192.168.0.6"

if ! nc -zu -w2 "$DNS_TEST" 53 > /dev/null 2>&1; then
    echo "AdGuardHome DNS IPv4 not responding"
    exit 1
fi


exit 0