# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.define "vagrant.gatling" do |instance|
    instance.vm.network "private_network", ip: "192.168.34.10"
    config.vm.synced_folder "gatling/", "/vagrant_src"
  end

  config.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
  end

  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell", inline: <<-SCRIPT
    apt-get update
    apt-get install -y python-pip
    pip install --upgrade ansible

    ansible-galaxy install -r /vagrant/requirements.yml -p /vagrant/roles

    export PYTHONUNBUFFERED=1
    cd /vagrant
    ansible-playbook -i "vagrant.ini" "site.yml"
  SCRIPT
end
