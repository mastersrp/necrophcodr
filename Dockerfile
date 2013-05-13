# MCChallenges
#
# VERSION 0.0.1

from ubuntu

run apt-get update
run apt-get install -y build-essential openssh-server git sudo
run curl -L https://get.rvm.io | sudo bash -s stable --autolibs=enabled --ruby
run rvmsudo gem install foreman
