#!/bin/bash
# Get new keys! Note: certonly MUST come after the rest of the options.
/root/letsencrypt/letsencrypt-auto -c /root/cli.ini certonly

# Reload Services
service webmin restart
