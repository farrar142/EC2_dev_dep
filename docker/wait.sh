#!/bin/bash

db_host="db"  
db_port=3306

# Wait for the postgres docker to be running
# while ! nc $db_host $db_port;do  
#   >&2 echo -e "\033[36m"== db_status[Not Ready] =="\033[0m"
#   sleep 1
# done
#echo -e "\033[36m"== db_status[Ready] =="\033[0m"

# Apply database migrations
#echo -e "\033[36m"== Apply database migrations =="\033[0m" 

#echo -e "\033[36m"== Start server =="\033[0m"
python manage.py makemigrations
python manage.py migrate
python manage.py runserver 0.0.0.0:8000 
#