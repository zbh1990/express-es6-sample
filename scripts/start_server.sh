#!/bin/bash
cd /home/ec2-user/app

export PORT=8080

# 杀掉旧进程（如果有）
pkill -f "node" || true

echo "Starting app on port $PORT..."
nohup npm start > server.log 2>&1 &

sleep 3
echo "Server started."
