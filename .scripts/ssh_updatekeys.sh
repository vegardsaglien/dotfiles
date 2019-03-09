#!/bin/bash

# This script will download and install authorized keys from github user.
githubuser=vegardsaglien

wget https://github.com/$githubuser.keys -O ~/.ssh/authorized_keys
chmod 644 ~/.ssh/authorized_keys

exit 0