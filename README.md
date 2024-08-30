# Development Environment Playbook(s)

![ci](https://github.com/nathan-wien/dev-env-playbook/actions/workflows/ci.yml/badge.svg)

A collection of Ansible playbooks to setup my personal dev environment.

Inspired by [Jeff Geerling's Mac Development Ansible Playbook](https://github.com/geerlingguy/mac-dev-playbook).

## Setting up a VirtualBox VM

My usual way of setting up a VirtualBox VM is through ssh from the host machine.

### Enable SSH port forwarding for a VM

Modify the network settings of the VM:

*  navigate through `Settings -> Networks -> Advanced -> Port forwarding`
* In the Port forwarding rules table, add a row with:
  * `Name`: `SSH` (or any name would do)
  * `Protocol`: `TCP`
  * `Host Port`: I typically go with `43219` but can go with something else.
  * `Guest Port`: `22`

Add the following to `~/.ssh/config` on the host machine:
