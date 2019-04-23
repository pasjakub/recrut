# -*- mode: ruby -*-
# vi: set ft=ruby :
 
Vagrant.configure("2") do |config|
 config.ssh.insert_key=false
 config.vm.box_check_update = "false"
 config.vm.provider "virtualbox" do |vb|
   vb.memory = "1024"
 end
 
 config.vm.define "apache" do |web|
   web.vm.hostname = "apache"
   web.vm.box = "hashicorp/precise64"
   web.vm.network :private_network, ip: "192.168.100.10"
   web.vm.network "forwarded_port", guest: "80", host: "8080"
   web.vm.synced_folder "D:\\PI VMs\\Training\\Shared", "/shared"

   web.vm.provider "virtualbox" do |vb|
     vb.name = "ansible-apache-002"
   end

   web.vm.provision "ansible_local" do |ansible|
     ansible.playbook="apache-playbook.yaml"
     ansible.install_mode = "pip"
     ansible.verbose="vvvv"
   end
  end

  config.vm.define "tomcat" do |tom|
   tom.vm.hostname = "tomcat"
   tom.vm.box = "hashicorp/precise64"
   tom.vm.network :private_network, ip: "192.168.100.11"
   tom.vm.synced_folder "D:\\PI VMs\\Training\\Shared", "/shared"

   tom.vm.provider "virtualbox" do |vb|
     vb.name = "anbsible-tomcat-002"
   end

   tom.vm.provision "ansible_local" do |ansible|
     ansible.playbook="tomcat-playbook.yaml"
     ansible.install_mode = "pip"
     ansible.verbose="vvvv"
   end
  end
end
