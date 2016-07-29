#!/bin/bash

# Download
yum install -y wget unzip
wget https://s3.amazonaws.com/aws-cli/awscli-bundle.zip
unzip awscli-bundle.zip
./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
./awscli-bundle/install -b ~/bin/aws
./awscli-bundle/install -h
rm -rf awscli-bundle
rm awscli-bundle.zip
