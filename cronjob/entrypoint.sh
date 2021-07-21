#!/bin/bash

env >> /etc/environment

git config --global user.name "${USERNAME}"
git config --global user.email "${USEREMAIL}"

git clone git@github.com:alphokung/covid-lab-data.git .

exec "$@"
