FROM ubuntu

MAINTAINER Eduardo Patrocinio and Sahdev P. Zala

RUN apt-get -y update && apt-get install -y \ 
    python-pip 

RUN pip install heat-translator

COPY heat_translator_logging.conf /usr/local/lib/python2.7/dist-packages/translator/conf/

COPY my_tosca /tmp/my_tosca

ENTRYPOINT ["heat-translator"]




