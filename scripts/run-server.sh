#!/bin/bash
jupyter notebook &
tensorboard --port=6006 --logdir=/home/jupyter/tensorlogs