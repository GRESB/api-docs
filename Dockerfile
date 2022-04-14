FROM ruby:2.6.9-bullseye
WORKDIR /app
COPY Gemfile* ./
RUN gem install bundler:2.1.4
RUN apt-get install bash  libxml2

ENV LANG=C.UTF-8
RUN bundle config force_ruby_platform true
RUN gem install libv8 -v '3.11.8.17' -- --with-system-v8
RUN bundle install

EXPOSE 4567
CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
