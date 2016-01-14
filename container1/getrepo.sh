#!/bin/bash

git clone ${REPO:-https://github.com/RootService/website.git} /var/www/html/
cd $_
markdown README.md -o index.html
