FROM ruby:2.5.7-stretch
WORKDIR /app
COPY Gemfile* ./
ENV LANG=C.UTF-8
RUN bundle install
EXPOSE 4567
CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
