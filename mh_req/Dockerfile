FROM nvidia/cuda:11.1-base-ubuntu18.04
# FROM nvidia/cuda:11.1-cudnn8-runtime-ubuntu20.04
# FROM nvidia/cuda:11.4.2-cudnn8-runtime-ubuntu20.04
#FROM ubuntu
# FROM python:3.8
FROM python:3.7

WORKDIR /home/app
COPY . .
RUN apt-get install -y git

RUN apt-get -y purge python3.8
RUN apt-get -y autoremove

#RUN pip install --upgrade pip
RUN python3 -m pip install --upgrade pip setuptools wheel
RUN apt-get install -y apt-transport-https
#RUN pip3 install --no-cache-dir Cython
RUN python3 -m pip install -r requirements.txt

#RUN python3 -m pip install git+https://github.com/VLL-HD/FrEIA.git

RUN python3 -m pip install timm
RUN python3 -m pip install -U scikit-learn scipy matplotlib
RUN python3 -m pip install scikit-image

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

# RUN git clone https://github.com/VLL-HD/FrEIA.git
# # RUN cd FrEIA
# RUN python3 FrEIA/setup.py develop
RUN python3 -m pip install git+https://github.com/VLL-HD/FrEIA.git