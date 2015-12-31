#!/bin/bash

## Install MySQL in Ubuntu
sudo apt-get update
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password 1234'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 1234'
sudo apt-get -y install mysql-server unzip zip
