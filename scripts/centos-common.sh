#!/bin/bash

yum update -y --exclude=kernel

# apache and tools
yum install -y vim git unzip screen nc telnet
