FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /railswithdocker
WORKDIR /railswithdocker

ADD Gemfile /railswithdocker/Gemfile
ADD Gemfile.lock /railswithdocker/Gemfile.lock

RUN bundle install

ADD . /railswithdocker
