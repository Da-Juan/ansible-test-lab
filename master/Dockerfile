FROM ansible-lab-core

ARG DEBIAN_FRONTEND=noninteractive
ARG GID=1000
ARG UID=1000

RUN groupadd -g ${GID} ansible
RUN useradd -d /home/ansible -m -g ansible -u ${UID} -s /bin/bash ansible

RUN apt-get update \
    && apt-get install --no-install-recommends --no-install-suggests -y \
        python-pip python-setuptools python-wheel \
    && rm -rf /var/lib/apt/lists/*

RUN pip install ansible

RUN mkdir /mnt/ansible-sshkeys \
    && chown ansible: /mnt/ansible-sshkeys

RUN su -c "ssh-keygen -t rsa -C 'Ansible master key' -f /mnt/ansible-sshkeys/ansible" ansible

RUN mkdir /etc/ansible
COPY ansible.cfg /etc/ansible

CMD ["/bin/bash","-c","trap : TERM INT; sleep infinity & wait"]
