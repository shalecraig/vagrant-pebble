# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |vb|
  #   # Don't boot with headless mode
  #   vb.gui = true

  #   # Use VBoxManage to customize the VM. For example to change memory:
      vb.customize ["modifyvm", :id, "--memory", "4096"]
  end

  # Provision as root:
  config.vm.provision "shell", path: "sources/pebble_vm_provision_as_root.sh"

  # Provision as `vagrant`:
  config.vm.provision "shell", path: "sources/pebble_vm_provision_as_vagrant.sh", privileged: "false"
end
