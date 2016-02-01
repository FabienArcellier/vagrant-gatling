Usage
======

First, install the ansible dependencies :

    make install_requirements

To run the virtual machine, execute :

    vagrant up

To reexecute installation scripts, execute :

    vagrant provision

To stop the virtual machine, execute :

    vagrant halt

To reload the virtual machine, execute :

    vagrant reload

To remove the virtual machine from your disk, execute :

    vagrant destroy

Configure jenkins
==================

Here is the job configuration

  cp -R /vagrant_src/* .
  mvn clean gatling:execute
  zip -r gatling.zip target/gatling/results/*

Check playbook
==============

    make tests

If it doesn't work due to missing ``ansible`` or ``ansible-galaxy roles``, use :

    apt-get install -y python-pip
    pip install -U ansible
    make install_requirements
