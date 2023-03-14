#!/bin/bash
sudo yum clean metadata
sudo yum -y install nginx
nginx -v