#!/usr/bin/env bash

HOST=www.skiacrobatiquelemassif.com
# creds set via environment variables
# USER=
# PASSWORD=

ftp -n -i -v $HOST << EOT
user $USER $PASSWORD

cd www

ascii
put index.html
mput assets/bootstrap/css/*
mput assets/bootstrap/fonts/*
mput assets/bootstrap/js/*
mput assets/css/*.css
mput assets/font-awesome/css/*.css
mput assets/font-awesome/fonts/*
mput assets/js/*

binary
mput assets/img/*

bye
EOT

