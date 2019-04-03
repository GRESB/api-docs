FROM ruby:2.5.5
WORKDIR /app
COPY Gemfile* ./
ENV LANG=C.UTF-8
RUN bundle install
EXPOSE 4567
CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
