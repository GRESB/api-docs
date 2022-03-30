FROM --platform=linux/amd64 ruby:2.6.9-alpine3.14
WORKDIR /app
COPY Gemfile* ./
RUN gem install bundler:2.1.4
RUN apk update && apk add --no-cache build-base
ENV LANG=C.UTF-8
RUN bundle config set deployment 'true'
RUN bundle install
EXPOSE 4567
CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
