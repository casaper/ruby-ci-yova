FROM ruby:2.6.6

RUN apt-get update -yqq \
  && apt-get install -yqq --no-install-recommends build-essential nodejs libpq-dev cron git-crypt \
  && gem install bundler -v 2.1.4 \
  && gem cleanup \
  && apt-get clean
