# MachineLearning CPU Dev

This is a container built around Tensorflow/Tensorboard, Keras, and Jupyter to assist with developing and
experimenting with various machine learning applications.

## Getting Started
* Pull from [Docker Hub](https://hub.docker.com/r/buffersandbeer/machinelearning-cpu-dev/)
* Check the environment variables below
* Run, exposing ports http/tcp/8888 (Jupyter) and http/tcp/6006 (Tensorboard)

### Usage

#### Environment Variables

* `JUPYTER_PASSWORD` - The password required to log in to Jupyter
  * Default: TempChangeMe!
* `JUPYTER_THEME` - The Jupyter theme to use
  * Default: solarizedd
  
#### Useful Directories to Mount
* `/home/jupyter/notebooks` - The home for Jupyter Notebooks
* `/home/jupyter/tensorlogs` - The home for logs read by Tensorboard

## Authors
* **Alec Gleason**