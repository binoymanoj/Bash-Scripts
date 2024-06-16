#!/bin/bash

# Array of domains
domains=("store.23andme.com" "research.23andme.com" "mediacenter.23andme.com" "medical.23andme.com" "auth.23andme.com" "blog.23andme.com" "you.23andme.com" "api.23andme.com" "education.23andme.com")

# Echo each domain individually
echo "Individual domains:"
for domain in "${domains[@]}"; do
    gobuster dir -u "$domain" -w /usr/share/wordlists/dirb/common.txt -b 301,429 | tee -a gobuster_report_$domain.txt
done
