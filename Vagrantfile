# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 8192
    v.cpus = 8
  end

  config.vm.provision "shell", path: "provision.sh"

  config.vm.provision "shell", inline: "export PYTHONPATH=/vagrant/caffe/python", run: "always"
end
