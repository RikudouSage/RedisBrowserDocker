FROM ruby:alpine

RUN apk add --update nodejs build-base gcc && rm -rf /var/cache/apk/*
RUN gem install redis-browser webrick

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]