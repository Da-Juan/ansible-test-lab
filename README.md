# Ansible Test Lab

An easy to run lab to learn [Ansible](https://www.ansible.com/) or test your playbooks and roles.

It will start one Ansible master and two target nodes.

## Dependencies

To run this lab you'll need Docker(17.12.0+) and Docker compose.

## Basic lab management

### Running the lab

To start the lab use the following commands at the root of the repository.

```
# To setup .env file and build the images
./setup.sh
# Then
docker-compose up
```
or if you prefer a one-liner
```
UID=$(id -u) GID=$(id -g) docker-compose up --detach --build
```

To test everything's went right run:

```
docker exec -t ansible-master ansible-playbook /opt/ansible/test_ping.yml
```

Note: the `-t` option is useful to get colors from Ansible output.

### Stopping the lab

```
docker-compose stop
```

### Removing the lab

After stopping the lab, if you want to destroy it, run:

```
docker-compose down --rmi all --volumes
```

## Using Ansible

### Adding your Ansible files to the lab

Simply put your files in the `ansible` directory.

### Create new role

```
docker exec ansible-master ansible-galaxy init --init-path=/opt/ansible/roles <role name>
```

## Advanced configuration

To override Docker settings, create a file named `docker-compose.override.yml` at the root of the repository.

The following example shows how to customize the lab's network IP range:

```YAML
version: "3.5"

networks:
  ansible:
    name: ansible
    ipam:
      driver: default
      config:
        - subnet: 192.168.0.0/24
```
