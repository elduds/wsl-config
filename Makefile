all: play

deps:
	sudo apt update && sudo apt install unzip python3 ansible

galaxy:
	ansible-galaxy role install deekayen.awscli2 geerlingguy.docker

play: deps galaxy
	ansible-playbook -i localhost playbook.yml