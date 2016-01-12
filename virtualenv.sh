#!/bin/bash
cat << EOF | sudo -iu vagrant
source `which virtualenvwrapper.sh`
#export PYTHONWARNINGS="ignore:Unverified HTTPS request"

rmvirtualenv NYLS-env
mkvirtualenv --system-site-packages NYLS-env
pip install \
    django django-extensions django-bower \
    djangorestframework \
    django-grappelli django-grappelli-extensions django-grappelli-filters

cd /NYLS
mkdir webapp
django-admin startproject nyls webapp

EOF