FROM coqorg/coq:latest
RUN sudo apt update
RUN sudo apt -y install spin
RUN sudo apt -y install vim-gtk
RUN mkdir -p ~/.vim/pack/coq/start
RUN git clone https://github.com/whonore/Coqtail.git ~/.vim/pack/coq/start/Coqtail
RUN vim +helptags\ ~/.vim/pack/coq/start/Coqtail/doc +q
#From here unzip the code repository manually
#Then perform the following steps manually
#RUN chmod 777 verifyMyCHIPs.sh
#RUN chmod 777 spin/verifyFullModel.sh
#RUN chmod 777 spin/verifyMinimalModel.sh
#RUN chmod 777 spin/verifyCoqMapping.sh
#RUN chmod 777 coq/verifyConformance.sh
