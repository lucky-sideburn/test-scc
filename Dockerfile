FROM ubuntu

RUN apt-get update
RUN apt-get -y install python
RUN apt-get clean

EXPOSE 80

WORKDIR /

COPY index.html index.html

CMD [ "python", "-m", "SimpleHTTPServer", "80" ]
