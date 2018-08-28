FROM ubuntu

USER root
RUN apt-get update
RUN apt-get -y install python
RUN apt-get clean

EXPOSE 80

WORKDIR /

COPY index.html index.html
COPY server.py server.py
CMD [ "python","server.py" ]
