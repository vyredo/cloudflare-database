#!/bin/bash


echo "Processing directory:"
rm -rf secrets
mkdir -p secrets
cloudflared tunnel token --cred-file ./secrets/credentials.json apitune-tunnel
chmod 777 secrets
chmod 644 secrets/credentials.json

echo "Token generation completed for all subdirectories."