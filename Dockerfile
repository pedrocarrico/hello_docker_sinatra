
FROM ubuntu
RUN apt-get install -y ruby rubygems-integration
RUN gem install bundler

COPY . /src
WORKDIR /src
RUN bundle install
EXPOSE 3000

CMD ["/usr/local/bin/foreman","start","-d","/src"]
