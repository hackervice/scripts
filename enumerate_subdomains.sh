#!/bin/bash

# Read each domain from domains.txt
while IFS= read -r domain; do
    echo "Enumerating subdomains for $domain..."
    assetfinder "$domain" > "$domain.txt"
    echo "Results saved to $domain.txt"
done < domains.txt
