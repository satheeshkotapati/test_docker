
FROM conda/miniconda3-centos7
RUN yum install -y libXext libSM libXrender wget
RUN wget -O $HOME/enchant-1.6.0-8.el7.x86_64.rpm http://mirror.centos.org/centos/7/os/x86_64/Packages/enchant-1.6.0-8.el7.x86_64.rpm
RUN yum install -y  $HOME/enchant-1.6.0-8.el7.x86_64.rpm
RUN yum install -y mesa-libGL gcc git 
CMD ["/bin/bash"]
