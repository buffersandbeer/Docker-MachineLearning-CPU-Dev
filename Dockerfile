FROM ubuntu:18.04

# Install System Utilities
ENV DEBIAN_FRONTEND=noninteractive
ENV DEBCONF_NONINTERACTIVE_SEEN=true
ENV JUPYTER_THEME=solarizedd
RUN echo "tzdata tzdata/Areas select America" > /tmp/preseed.txt && \
    echo "tzdata tzdata/Zones/America select Chicago" >> /tmp/preseed.txt && \
    debconf-set-selections /tmp/preseed.txt
RUN apt-get -y update && \
    apt-get -y install tzdata python3 python3-pip python3-numpy python3-scipy python3-pandas python3-sklearn curl git nginx
RUN pip3 install tensorflow keras jupyter ipython matplotlib jupyterthemes

# Create Jupyter user and configure the notebook
RUN useradd -m jupyter
USER jupyter
RUN mkdir -p /home/jupyter/.jupyter /home/jupyter/.ipython /home/jupyter/notebooks /home/jupyter/tensorlogs
ADD config/jupyter_notebook_config.py /home/jupyter/.jupyter/jupyter_notebook_config.py
ADD scripts/run-server.sh /srv/run-server.sh
RUN jt -t $JUPYTER_THEME

ENTRYPOINT  ["bash", "/srv/run-server.sh"]
