all: ansible-play

ansible-install:
	sudo apt update && sudo apt install unzip python3 ansible

ansible-roles: ansible-install
	ansible-galaxy role install deekayen.awscli2 geerlingguy.docker

ansible-play: ansible-roles
	ansible-playbook -i localhost playbook.yml