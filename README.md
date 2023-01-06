# Development Environment Playbook

![ci](https://github.com/nathan-wien/dev-env-playbook/actions/workflows/ci.yml/badge.svg)

Inspired by [Jeff Geerling's Mac Development Ansible Playbook](https://github.com/geerlingguy/mac-dev-playbook).

WIP.

## Ubuntu 22.04

* Step 1: Install ansible.

```
sudo apt update
sudo apt upgrade
sudo apt install python3-venv
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

* Step 2: Install core packages, including XFCE4 so that we have a UI to work with.

```
ansible-playbook -K -t "core,xfce"
```

* Step 3: Reboot, then install GuestAdditions. The disk should show up on desktop when the CD is inserted. Run the `autorun.sh` script.

* Step 4: Symlink dotfiles.

* Step 5: Create ssh keys.

```
ssh-keygen -t ed25519 -C "your_email@example.com" -f <key-file>
```

* Step 6: Symlink dotfiles.

* Step 7: Install useful programs.

```
ansible-playbook -t "starship,vivid" main.yml
```

## OL8 Box
