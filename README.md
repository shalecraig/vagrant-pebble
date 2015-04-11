# vagrant-pebble
> Vagrant Setup for Pebble SDK

This is a fork of [shalecraig](https://github.com/shalecraig)'s
[repo](https://github.com/shalecraig/vagrant-pebble).
This is a slighly modified version of his work, I'll try to rebase to upstream as
much as I can.

This Vagrant configuration will configure a VM with all the required for
Pebble app development closely following this [guide](http://developer.getpebble.com/sdk/install/linux/).

## Prerequisites

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
  - _tested with version 4.3_
- [Vagrant](http://www.vagrantup.com/downloads)
  - _tested with version 1.7.2_

## Getting Started

Clone this repository

    git clone https://github.com/jvtrigueros/vagrant-pebble
    cd vagrant-pebble

_Optional:_ Checkout the tag matching desired SDK version, `master` is on v3.0-dp4.

    git checkout v2.9

Create and provision VM

    vagrant up

This will start VirtualBox in graphical mode, the reason being is because there's
now an emulator packaged with the Pebble SDK. This makes development much easier.

Once the provisioning is done, you can either ssh into the VM or use the VirtualBox
graphical interface.

    vagrant ssh

    vagrant@vagrant-ubuntu-trusty-64:~$ pebble --version
    PebbleSDK 3.0-dp4
    vagrant@vagrant-ubuntu-trusty-64:~$ pebble new-project --simple test
    Creating new project test
    vagrant@vagrant-ubuntu-trusty-64:~$ cd test/
    vagrant@vagrant-ubuntu-trusty-64:~/test$ pebble build
    ...
    'build' finished successfully (0.160s)

#### VM Defaults

- **OS**: Ubuntu 14.04 x64
- **WM**: OpenBox
- **RAM**: 2GB
