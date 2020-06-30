# 生成的新镜像以centos镜像为基础
FROM centos
# 指定作者信息
MAINTAINER hayes <1786980087@qq.com>
# 安装openssh-server
RUN yum -y install openssh-server
RUN yum -y install vim 
RUN yum -y install wget curl
RUN mkdir /var/run/sshd
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key

# 指定root密码
# RUN /bin/echo 'root:123456'|chpasswd
# RUN /bin/sed -i 's/.*session.*required.*pam_loginuid.so.*/session optional pam_loginuid.so/g' /etc/pam.d/sshd
# RUN /bin/echo -e "LANG=\"en_US.UTF-8\"" > /etc/default/local
WORKDIR /usr
EXPOSE 22 
EXPOSE 8080 
# CMD /usr/sbin/sshd -D
CMD /bin/bash