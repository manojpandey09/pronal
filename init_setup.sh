#!/bin/bash

echo "[$(date)]: START"

# Manually source conda setup (replace this path if needed)
source ~/anaconda3/etc/profile.d/conda.sh || source /c/Users/ASUS/anaconda/etc/profile.d/conda.sh

echo "[$(date)]: Creating conda environment with Python 3.8"
conda create --prefix ./env python=3.8 -y

echo "[$(date)]: Activating the environment"
conda activate ./env

echo "[$(date)]: Installing the dev requirements"
pip install -r requirements.txt

echo "[$(date)]: END"
