
.PHONY: tests
tests:
	bash tests/tests.sh

.PHONY: install
install:
	vagrant ssh-config > ssh.config
	ansible-playbook -i vagrant.ini site.yml

.PHONY: install_requirements
install_requirements:
	ansible-galaxy install -r requirements.yml -p roles
