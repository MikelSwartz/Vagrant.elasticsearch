# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
  config.vm.define "elastic" do |elastic|
        elastic.vm.box = "boxcutter/centos68" #ktykogm/centos6.8
	elastic.vm.hostname = "es01.elastic"
 	elastic.vm.network :private_network, ip: "192.168.50.20", bridge: "eth0"
	elastic.vm.network "forwarded_port", guest: 9200, host:9200
	elastic.vm.provision "shell",
          path: "elastic.provision.sh"
  end

end
