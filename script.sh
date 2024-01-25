#! /bin/bash

echo $SSH_PRIVATE_KEY
echo $SSH_USER

echo $SSH_USER > secret.txt

cat secret.txt
cat $SSH_PRIVATE_KEY
