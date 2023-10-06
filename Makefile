all: play

deps:
	sudo apt update && sudo apt install unzip python3 ansible git

galaxy:
	ansible-galaxy role install \
	 deekayen.awscli2 \
	 geerlingguy.docker \
	 gantsign.oh-my-zsh

play: deps galaxy
	ansible-playbook -i localhost playbook.yml