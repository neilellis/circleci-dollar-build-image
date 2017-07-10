FROM circleci/openjdk:8-jdk-browsers
RUN sudo apt-get update && sudo apt-get -y install gettext-base 
COPY jekyll.sh .
RUN sudo chmod 755 jekyll.sh
RUN sudo ln -s $(pwd)/jekyll.sh /bin/jekyll

