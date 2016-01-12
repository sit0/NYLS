#!/bin/sh 
cd /tmp/conf

cp etc/nginx/sites-available/default /etc/nginx/sites-available/default
service nginx restart

cd dotfiles
for FILE in *; do
    cp $FILE /home/vagrant/.$FILE
done
cd ..

sudo -u postgres psql < db-init.sql
cat << EOF | sudo -iu vagrant
/NYLS/import/import.sh
EOF
