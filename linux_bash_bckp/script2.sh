#!/bin/bash
sudo rsync -ravzh --delete-delay -e 'ssh -i /home/ubuntu/.ssh/MyKey.pem' /home/ubuntu/homework ubuntu@ec2-18-196-169-176.eu-central-1.compute.amazonaws.com:/home/ubuntu/