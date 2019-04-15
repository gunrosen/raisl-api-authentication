FROM ruby:2.5.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
ENV RAILS_ROOT /usr/src/app
RUN mkdir -p $RAILS_ROOT 
WORKDIR $RAILS_ROOT 
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
COPY . .