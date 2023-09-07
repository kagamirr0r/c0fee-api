FROM ruby:3.0.4

ENV LANG C.UTF-8

ENV APP_ROOT /app
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client vim

COPY Gemfile $APP_ROOT/Gemfile
COPY Gemfile.lock $APP_ROOT/Gemfile.lock
RUN bundle install
RUN bundle update

COPY . $APP_ROOT

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
