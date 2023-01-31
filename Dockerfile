FROM ruby:3.1.2-alpine3.14
WORKDIR /app
COPY Gemfile* ./
RUN gem install bundler:2.4.1
ENV BUNDLER_VERSION=2.4.1
RUN apk add --update --no-cache \
                     build-base \
                     python3


RUN bundle config force_ruby_platform true
RUN bundle install --jobs 4 --retry 3

EXPOSE 4567
CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
