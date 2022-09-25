FROM amazonlinux:latest

RUN yum -y install yum-plugin-fastestmirror \
  # && yum -y update  \
  && yum install -y git \
  && yum install -y gcc-6 patch bzip2 openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel \
  && cd ~ \
  && git clone https://github.com/rbenv/rbenv.git ~/.rbenv && echo "Cloned" \
  # && amazon-linux-extras install -y ruby2.6 \
  # && yum install -y which git \
  # && gpg --keyserver hkp://pgp.mit.edu --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB \
  # && curl -sSL https://get.rvm.io | bash -s stable \
  # && rvm install 2.7.1 \
  ;

RUN mkdir -p "$(rbenv root)"/plugins \
  && git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build && echo "Cloned" \
  ;

RUN rbenv install 2.7.1 \
  && rbenv global 2.7.1 \
  && gem install bundler \
  ;

CMD tail -f /dev/null
