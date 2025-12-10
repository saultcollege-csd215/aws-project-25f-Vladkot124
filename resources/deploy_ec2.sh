#!/bin/bash
# This gets run ON the EC2 instance (NOT in the GitHub Actions runner)

set -e

cd /home/ec2-user/dice

# safe.directory is fine to keep
git config --global --add safe.directory /home/ec2-user/dice

git fetch --all
git switch main
git pull origin main

sudo systemctl restart diceapp
sudo systemctl status diceapp --no-pager -l
echo "Deployment on EC2 instance completed."