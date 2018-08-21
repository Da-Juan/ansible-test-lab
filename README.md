# Ansible Test Lab

An easy to run lab to learn [Ansible](https://www.ansible.com/) or test your playbooks and roles.

It will start one Ansible master and two target nodes.

## Dependencies

To run this lab you'll need Docker(17.12.0+) and Docker compose.

## Basic lab management

### Running the lab

To start the lab use the following command at the root of the repository.

```
docker-compose up --detach --build
```

To test everything's went right run:

```
docker exec ansible-master ansible-playbook -i /opt/ansible/inventory /opt/ansible/test_ping.yml
```

### Stopping the lab

```
docker-compose stop
```

### Removing the lab

After stopping the lab, if you want to destroy it, run:

```
docker-compose down --rmi all -v
```

## Adding your Ansible files to the lab

Simply put your files in the `ansible` directory.
