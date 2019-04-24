# -*- mode: ruby -*-
# vi: set ft=ruby :
 
Vagrant.configure("2") do |config|
 config.ssh.insert_key=false
 config.vm.box_check_update = "false"
 config.vm.provider "virtualbox" do |vb|
   vb.memory = "1024"
 end
 
 config.vm.define "ubuntu" do |ubnt|
   ubnt.vm.hostname = "ubuntu"
   ubnt.vm.box = "hashicorp/precise64"
   ubnt.vm.network :private_network, ip: "192.168.100.10"
   ubnt.vm.network "forwarded_port", guest: "80", host: "8080"

   ubnt.vm.provider "virtualbox" do |vb|
     vb.name = "ubuntu"
   end

   ubnt.vm.provision "ansible_local" do |ansible|
     ansible.playbook="playbook.yaml"
     ansible.install_mode = "pip"
     ansible.verbose="vvvv"
   end
  end

  config.vm.define "centos" do |cent|
   cent.vm.hostname = "centos"
   cent.vm.box = "centos/7"
   cent.vm.network :private_network, ip: "192.168.100.11"

   cent.vm.provider "virtualbox" do |vb|
     vb.name = "centos"
   end

   cent.vm.provision "ansible_local" do |ansible|
     ansible.playbook="playbook.yaml"
     ansible.install_mode = "pip"
     ansible.verbose="vvvv"
   end
  end
end
