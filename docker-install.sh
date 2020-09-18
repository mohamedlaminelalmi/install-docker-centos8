#!/bin/bash
# This script is used to install Docker on Centos 8
# Author: Moahmed Lamine Lalmi
# Documentation: https://docs.docker.com/engine/install/centos/

# Variables:
DOCKER_REPO="https://download.docker.com/linux/centos/docker-ce.repo"
FAILED_MSG="\e[31mDocker Installation failed\e[0m\n"
ENABLE_FAILED_MSG="\e[31mDocker Service could not be enabled\e[0m\n"
SUCCESS_MSG="\e[32mCongratulations! Docker is well installed on your machine\e[0m\n"
ASK_RUN_DOCKER="\e[34mDo you want to start Docker?\e[0m (y/n) "
ASK_TEST_DOCKER="\e[34mDo you want to test Docker?\e[0m (y/n) "

# 1- Remove any old version of docker
sudo yum remove docker

# 2- Install yum-utils which provides 'yum-config-manager' tool
sudo yum install -y yum-utils

# 3- Setup Docker repository (stable)
sudo yum-config-manager --add-repo $DOCKER_REPO

# 4- Install Docker Engine
#sudo yum install docker-ce docker-ce-cli containerd.io --nobest -y || echo -e $FAILED_MSG && exit

# Installation succeed:
echo -e $SUCCESS_MSG

# Enable Docker service (By default is enabled but it is nice to try!)
#sudo systemctl enable docker || echo -e $ENABLE_FAILED_MSG && exit

sudo systemctl enable docker

# Do you want to start Docker ?
echo -e $ASK_RUN_DOCKER
read response

if [[ "$response" =~ ^(yes|y)$ ]]
then
    # Start Docker service
    sudo systemctl start docker

    # Do you want to test docker ?
    echo -e $ASK_TEST_DOCKER
    read response

    if [[ "$response" =~ ^(yes|y)$ ]]
    then
        # Test Docker (using hello-world image)
        sudo docker run hello-world
    fi
fi
