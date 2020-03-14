FROM python:3

RUN \
  pip install --no-cache-dir \
    defusedxml \
    netifaces

COPY . /usr/src/app/
WORKDIR /usr/src/app/

RUN python ./setup.py install

ENTRYPOINT [ "aioupnp" ]
