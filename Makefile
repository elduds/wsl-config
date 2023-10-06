all: play

deps:
	sudo apt update && sudo apt install unzip python3 ansible git

galaxy:
	ansible-galaxy install -r requirements.yml

play: deps galaxy
	ansible-playbook -i localhost playbook.yml