#!/bin/bash

TO="temanomad@gmail.com"
SUBJECT="Nginx deployed!"
BODY="The latest version of Nginx was deployed successfully."

echo -e "Subject: $SUBJECT\n\n$BODY" | msmtp "$TO"

