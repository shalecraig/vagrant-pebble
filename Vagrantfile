# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |vb|
    # vb.gui = true

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.provision "shell", path: "sources/pebble_vm_provision_as_root.sh"
  config.vm.provision "shell", path: "sources/pebble_vm_provision_as_vagrant.sh", privileged: "false"
  config.vm.provision "shell", path: "sources/openbox.sh"
end
