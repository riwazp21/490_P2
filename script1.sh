#!/usr/bin/env bash
#Author: Riwaz Poudel CS 490 Assignment 1 Problem 1
#This bash file is for Problem 1
sudo apt-get update -y
sudo apt-get install htop -y
sudo apt install screen
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh
if [ -f"~/miniconda3/bin/conda" ]; then
	echo "Conda file exists"
	~/miniconda3/bin/conda init bash
else
	echo "Conda file doesn't exist. Make sure you ran the previous installlation correctly."
fi
