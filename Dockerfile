FROM ubuntu

RUN apt-get -qq -y update && apt-get -q -y install curl build-essential sqlite3 uuid-dev
RUN curl -L http://download.zeromq.org/zeromq-4.0.3.tar.gz | tar xz && cd zero* && ./configure && make && make install
RUN curl -L https://github.com/zedshaw/mongrel2/archive/v1.8.1.tar.gz | tar xz && cd mongrel*
