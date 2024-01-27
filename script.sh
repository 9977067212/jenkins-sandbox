#! /bin/bash

echo "Path to SSH private key: $SSH_PRIVATE_KEY"
echo "SSH user: $SSH_USER"
cat $SSH_PRIVATE_KEY

echo "a ${SSH_PRIVATE_KEY} a" > file
cat file
