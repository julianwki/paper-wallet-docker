#!/bin/sh

cd $TMP
wget https://github.com/MichaelMure/WalletGenerator.net/archive/master.zip
unzip master.zip
mv WalletGenerator.net-master/* /usr/share/nginx/html

exec nginx -g "daemon off;"
