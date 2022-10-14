FROM ubuntu:latest

RUN apt update \
  && apt install -y git curl openssh-client libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev \
  ;

RUN curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash \
  && echo 'eval "$($HOME/.rbenv/bin/rbenv init - bash)"' >> $HOME/.bashrc \
  && . $HOME/.bashrc \
  && rbenv install 2.7.1 \
  && rbenv global 2.7.1 \
  && gem install bundler \
  ;

CMD tail -f /dev/null
