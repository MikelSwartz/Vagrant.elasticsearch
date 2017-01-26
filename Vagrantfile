# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end
  config.vm.define "elastic" do |elastic|
          elastic.vm.box = "bmcgonigle/centos68"
	  elastic.vm.hostname = "elastic.home"
 	  elastic.vm.network :private_network, ip: "192.168.50.20", bridge: "eth0"
	  elastic.vm.provision "shell",
            path: "elastic.provision.sh"
  end

end
