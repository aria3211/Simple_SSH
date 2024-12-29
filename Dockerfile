
FROM ubuntu:20.04


RUN apt-get update && apt-get install -y --no-install-recommends \
    openssh-server \
    sudo && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    mkdir /var/run/sshd


RUN useradd -rm -d /home/sshuser -s /bin/bash -g root -G sudo -u 1000 sshuser && \
    echo 'sshuser:sshpassword' | chpasswd


RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    echo "PermitUserEnvironment yes" >> /etc/ssh/sshd_config


EXPOSE 22


CMD ["/usr/sbin/sshd", "-D"]
