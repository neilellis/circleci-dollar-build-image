FROM circleci/openjdk:8-jdk-browsers
RUN sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade && sudo apt-get -y install gettext-base make gcc build-essential
#RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
#    && curl -sSL https://get.rvm.io | grep -v __rvm_print_headline | bash -s stable --ruby --gems=jekyll
#ENV JEKYLL_RUBY 2.3.3
#ADD jekyll.sh .
#RUN sudo chmod 755 jekyll.sh
#RUN ./jekyll.sh ${JEKYLL_RUBY}
#RUN sudo ln -s ${HOME}/.rvm/gems/ruby-${JEKYLL_RUBY}/wrappers/jekyll /bin/jekyll
#RUN jekyll -v
#RUN cd ~ && git clone https://github.com/sillelien/build-utils.git && chmod a+x ~/build-utils/*.sh && cd -
#RUN mkdir -p $HOME/.ssh/
#RUN sudo chmod 640 $HOME/.ssh
#RUN echo "github.com ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAq2A7hRGmdnm9tUDbO9IDSwBK6TbQa+PXYPCPy6rbTrTtw7PHkccKrpp0yVhp5HdEIcKr6pLlVDBfOLX9QUsyCOV0wzfjIJNlGEYsdlLJizHhbn2mUjvSAHQqZETYP81eFzLQNnPHt4EVVUh7VfDESU84KezmD5QlWpXLmvU31/yMf+Se8xhHTvKSCZIFImWwoG6mbUoWf9nzpIoaSjB+weqqUUmpaaasXVal72J+UX2B+2RPW3RcT0eOzQgqlJL3RKrTJvdsjE3JEAvGq3lGHSZXy28G3skua2SmVi/w4yCE6gbODqnTWlg7+wC604ydGXA8VJiS5ap43JXiUFFAaQ==" >> $HOME/.ssh/known_hosts
#RUN sudo chmod 640 $HOME/.ssh/known_hosts
ADD build-init.sh /home/circleci/.build-init.sh
RUN sudo chmod 755 /home/circleci/.build-init.sh
