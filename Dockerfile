FROM ruby:2.5.0-slim

RUN mkdir /app
WORKDIR /app

RUN gem install bundler
RUN apt-get update
RUN apt-get install -y git build-essential

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install
COPY . /app
