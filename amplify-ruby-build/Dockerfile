FROM ubuntu:latest

ARG RUBY_VERSION=3.2.2

RUN apt update \
  && apt install -y \
  git \
  curl \
  openssh-client \
  libssl-dev \
  libreadline-dev \
  zlib1g-dev \
  autoconf \
  bison \
  build-essential \
  libyaml-dev \
  libreadline-dev \
  libncurses5-dev \
  libffi-dev \
  libgdbm-dev \
  ;

RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash \
  && echo 'eval "$(/root/.rbenv/bin/rbenv init - bash)"' >> /root/.bashrc \
  && . /root/.bashrc \
  && rbenv install $RUBY_VERSION \
  && rbenv global $RUBY_VERSION \
  && gem install bundler \
  ;

CMD tail -f /dev/null
