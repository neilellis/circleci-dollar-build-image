FROM circleci/openjdk:8-jdk-browsers
RUN sudo apt-get update && sudo apt-get -y install gettext-base ruby ruby-dev make gcc && sudo gem install jekyll bundler
