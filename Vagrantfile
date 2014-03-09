# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.network :public_network, :bridge => 'en1: Wi-Fi (AirPort)'

  # config.vm.provision :puppet do |puppet|
  #   puppet.manifests_path = "manifests"
  #   puppet.manifest_file  = "init.pp"
  # end

# Provision as root:
  config.vm.provision "shell" do |s|
    s.path = "sources/pebble_vm_provision_as_root.sh"
  end

# Provision as `vagrant`:
  config.vm.provision "shell", path: "sources/pebble_vm_provision_as_vagrant.sh", privileged: "false"
end
