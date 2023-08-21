# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.ssh.insert_key = false
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

# Database server 1.
config.vm.define "master1" do |master|
  master.vm.hostname = "u22s-k3s"
  master.vm.box = "adavilag/ubuntu-server-22.04.1"
  master.vm.box_version = "1.1"

  master.vm.network :private_network, ip: "192.168.60.55"
  master.vm.provision :shell, :path => "master.sh"
end
end

