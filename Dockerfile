FROM python:3-alpine
MAINTAINER Michiel Karnebeek

COPY ./configurator.py ./run.sh /opt/app/
COPY settings.conf /config/

EXPOSE 3218

VOLUME /config

WORKDIR /opt/app
RUN chmod a+x ./configurator.py ./run.sh

CMD /opt/app/run.sh
