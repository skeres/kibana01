FROM ubuntu:latest
# install ssh server and tools
USER root
RUN apt update && apt install -y sudo openssh-server vim net-tools python2 lsof curl iputils-ping ;
RUN useradd -s /bin/bash -d /home/ugeek/ -m -G sudo ugeek; \
touch /etc/sudoers.d/addSudo && chmod 440 /etc/sudoers.d/addSudo; \
echo 'ugeek  ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers.d/addSudo; \
passwd -d ugeek && echo "ugeek\nugeek\n" | passwd ugeek ; \
sed -i 's/#PasswordAuthentication\ no/PasswordAuthentication\ yes/' /etc/ssh/sshd_config; \
update-rc.d ssh defaults ;
USER root
CMD service ssh start && tail -f /dev/null
