#!/bin/bash
set -e

# Runs ON the EC2 instance
cd /home/ec2-user/dice

# Make sure we are on main and fully match origin/main
git fetch --all
git switch main || git checkout -b main
git reset --hard origin/main

sudo systemctl restart diceapp
sudo systemctl status diceapp --no-pager -l
echo "Deployment to EC2 instance completed."