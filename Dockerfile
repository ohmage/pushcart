# ~ IMPORTANT ~
# This configuration is not for production, and only for local development environment.
#
# It mounts the local source code into the running 'api' container, making it easy to load updates.

FROM ruby:2.2.5
MAINTAINER Jared Sieling <jared.sieling@gmail.com>

RUN apt-get -y update && apt-get -y install build-essential

# for postgres
RUN apt-get install -y libpq-dev

# for a JS runtime (ActiveAdmin requires)
RUN apt-get install -y nodejs

# don't know if this is needed??
RUN apt-get install -y ntp

RUN mkdir /app
WORKDIR /app

EXPOSE 3000

CMD ["bash", "docker-cmd.sh"]
