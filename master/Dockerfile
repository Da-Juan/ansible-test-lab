FROM ansible-lab-core

RUN apt-get update \
    && apt-get install --no-install-recommends --no-install-suggests -y \
        python-pip python-setuptools \
    && rm -rf /var/lib/apt/lists/*

RUN pip install ansible

RUN mkdir /mnt/ansible-sshkeys \
    && cd /mnt/ansible-sshkeys \
    && ssh-keygen -t rsa -C "Ansible master key" -f ansible

RUN mkdir /etc/ansible
COPY ansible.cfg /etc/ansible

CMD ["/usr/sbin/sshd","-D"]
