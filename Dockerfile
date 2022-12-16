FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y \
    python-pip \
    python-tk \
 && rm -rf /var/lib/apt/lists/*

RUN python -m pip install --upgrade pip

RUN mkdir /WaterGAN

COPY . /WaterGAN/.

RUN cd /WaterGAN \
 && python -m pip install -r requirements.txt

WORKDIR /WaterGAN

CMD ["bash" ]
