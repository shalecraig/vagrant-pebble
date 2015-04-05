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

_Optional:_ Checkout the branch matching desired SDK version, `master` is on 2.9.

    git checkout sdk-3.0-dp4

Create and provision VM

    vagrant up

Done!

    vagrant ssh

    vagrant@vagrant-ubuntu-trusty-64:~$ pebble --version
    PebbleSDK 2.9


#### VM Defaults

- **OS**: Ubuntu 14.04 x64
- **RAM**: 4GB
