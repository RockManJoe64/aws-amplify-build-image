FROM amazonlinux:latest as builder

RUN yum -y install yum-plugin-fastestmirror \
  && yum install -y git gcc gcc-6 make patch bzip2 tar openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel ruby-dev ruby-devel \
  && curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash \
  && echo 'eval "$($HOME/.rbenv/bin/rbenv init - bash)"' >> ~/.bash_profile \
  && source ~/.bash_profile \
  && rbenv install 2.7.1 \
  && rbenv global 2.7.1 \
  && gem install bundler \
  ;

CMD tail -f /dev/null
