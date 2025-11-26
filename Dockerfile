FROM ruby:3.4.7-alpine3.22
WORKDIR /app
COPY Gemfile* ./
RUN gem install bundler:2.7.2
ENV BUNDLER_VERSION=2.7.2
RUN apk add --update --no-cache \
                     build-base \
                     python3 \
                     linux-headers \
                     yaml-dev



RUN bundle config force_ruby_platform true
RUN bundle install --jobs 4 --retry 3

EXPOSE 4567
CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
