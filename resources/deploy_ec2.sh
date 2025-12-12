set -e
cd /home/ec2-user/dice
sudo chown -R ec2-user:ec2-user /home/ec2-user/dice
...
git reset --hard origin/main
sudo systemctl restart diceapp
...
dial tcp *:22: i/o timeout
