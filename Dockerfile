FROM ruby:2.5.3
RUN apt-get update
WORKDIR /app
COPY Gemfile* ./
RUN bundle install
COPY . .
EXPOSE 4567
CMD ["bundle", "exec", "middleman", "server"]
