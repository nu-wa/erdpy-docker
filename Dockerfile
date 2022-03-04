LABEL dog.kys.image.author="contact@kys.dog"

FROM 'alpine'

RUN apk add --update --no-cache python3 wget gcc libc-dev python3-dev libffi-dev shadow \
    && ln -sf python3 /usr/bin/python \
    && addgroup -S erdpy \
    && adduser -S erdpy -G erdpy

USER erdpy
WORKDIR /home/erdpy
ENV PATH="/home/erdpy/.local/bin:$PATH"

RUN python3 -m ensurepip

RUN pip3 install --no-cache --upgrade pip setuptools \
    && wget -O erdpy-up.py https://raw.githubusercontent.com/ElrondNetwork/elrond-sdk-erdpy/master/erdpy-up.py \
    && python3 erdpy-up.py \
    && /home/erdpy/elrondsdk/erdpy deps install rust \
    && rm erdpy-up.py

USER root
WORKDIR /
COPY erdpy /usr/bin/erdpy
