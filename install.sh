#!/bin/sh
apt-get update

apt-get -y install \
    vim git zsh python-dev python-pip libffi-dev libssl-dev nginx \
    postgresql-9.3 postgresql-server-dev-9.3 virtualenvwrapper
    
pip install -U \
    pip ndg-httpsclient cmdln ipython psycopg2 \
    powerline-status
