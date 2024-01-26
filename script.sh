#! /bin/bash

echo "Path to SSH private key: $SSH_PRIVATE_KEY"
echo "SSH user: $SSH_USER"

echo $VAULT_TOKEN > file.txt
cat file.txt
