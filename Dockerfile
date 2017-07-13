FROM circleci/openjdk:8-jdk-browsers
RUN sudo apt-get update && sudo apt-get -y install gettext-base make gcc build-essential
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
    && curl -sSL https://get.rvm.io | grep -v __rvm_print_headline | bash -s stable
ENV JEKYLL_RUBY 2.3.3
ADD jekyll.sh .
RUN sudo chmod 755 jekyll.sh
RUN ./jekyll.sh ${JEKYLL_RUBY}
RUN sudo ln -s ${HOME}/.rvm/gems/ruby-${JEKYLL_RUBY}/wrappers/jekyll /bin/jekyll
RUN jekyll -v
RUN cd ~ && git clone https://github.com/sillelien/build-utils.git && chmod a+x ~/build-utils/*.sh && cd -
RUN mkdir -p ~/.ssh/
RUN ssh-keyscan github.com >> ~/.ssh/known_hosts
