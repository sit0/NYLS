# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder "../NYLS", "/NYLS"


  config.vm.provider "virtualbox" do |vb|
    # vb.gui = true
    # vb.memory = "1024"
  end

  config.push.define "atlas" do |push|
    push.app = "sit0/nyls"
  end

  config.vm.provision "shell", path: "install.sh"
  config.vm.provision "file", source: "conf.tbz", destination: "/tmp/conf.tbz"
  config.vm.provision "shell", path: "configure.sh"

  config.vm.provision "shell", path: "virtualenv.sh"

end
