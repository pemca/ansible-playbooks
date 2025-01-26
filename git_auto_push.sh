#!/bin/bash

# Get the current date and time
TIMESTAMP=$(date +"%d-%m-%Y %H:%M")

# Update README.md with the timestamp
echo "pemca's ansible playbooks main repository, last updated $TIMESTAMP" > README.md

# Add changes to the staging area
git add .

# Commit with the current timestamp as the message
read -p "Enter the Commit message [default: $TIMESTAMP]: " MESSAGE

# If no message was given
if [[ -z "$MESSAGE" ]]; then
  MESSAGE=$TIMESTAMP
fi

# Commit the message
git commit -m "$MESSAGE"

# Push to the main branch
git push origin staging


