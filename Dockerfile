FROM ruby:latest
RUN gem install httparty
RUN mkdir /usr/src/app
ADD . /usr/src/app/
WORKDIR /usr/src/app/
ENTRYPOINT ["ruby","main.rb"]