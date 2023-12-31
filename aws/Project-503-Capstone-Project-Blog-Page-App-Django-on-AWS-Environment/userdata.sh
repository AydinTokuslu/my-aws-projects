#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@github.com/AydinTokuslu/my-aws-projects.git
cd /home/ubuntu/my-aws-capstone-project/aws/Project-503-Capstone-Project-Blog-Page-App-Django-on-AWS-Environment
apt install python3-pip -y
apt-get install python3.7-dev default-libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/aws/Project-503-Capstone-Project-Blog-Page-App-Django-on-AWS-Environment/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80