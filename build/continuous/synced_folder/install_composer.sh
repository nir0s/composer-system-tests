#!/bin/bash

mkdir -p ~/composer
pushd ~/composer
    wget -qq -O composer.tar.gz $COMPOSER_URL
    tar -xzf composer.tar.gz
    echo " I am in `pwd`"
    ls -ll
    pushd package
        nohup node server.js & > serverlogs.log
    popd
popd
