# Ansible Test Lab

An easy to run lab to learn [Ansible](https://www.ansible.com/) or test your playbooks and roles.

It will start 1 Ansible master and 2 target nodes.

## Dependencies

To run this lab you'll need Docker(17.12.0+) and Docker compose.

## Running the lab

To start the lab use the following command at the root of the repository.

```
docker-compose up --detach --build
```

To test everything's went right run:

```
docker exec ansible-master ansible-playbook -i /opt/ansible/inventory /opt/ansible/test_ping.yml
```

## Adding your Ansible files to the lab

Simply put your files in ansible directory.

## Stopping the lab

```
docker-compose stop
```

## Removing the lab

After stopping the lab, if you want to destroy it, run:

```bash
# Remove containers
docker-compose rm
# Remove SSH keys volume
docker volume rm ansible-sshkeys
# Remove Docker images
docker image rm ansible-lab-node ansible-lab-master ansible-lab-core
```
