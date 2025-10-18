#!/bin/bash
set -e

echo "===== Installing dependencies ====="

if ! command -v node &> /dev/null
then
  echo "Node.js not found, installing..."
  # Amazon Linux 2 / Amazon Linux 2023
  curl -fsSL https://rpm.nodesource.com/setup_18.x | sudo -E bash -
  sudo yum install -y nodejs
fi

sudo chown -R ec2-user:ec2-user /home/ec2-user/app

cd /home/ec2-user/app

echo "===== Running npm install ====="
npm install

echo "===== Dependencies installed successfully ====="
