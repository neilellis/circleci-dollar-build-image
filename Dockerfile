FROM circleci/openjdk:8-jdk-browsers
RUN sudo apt-get update && sudo apt-get -y install gettext-base make gcc
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
    && curl -sSL https://get.rvm.io | grep -v __rvm_print_headline | bash -s stable --ruby --gems=jekyll
