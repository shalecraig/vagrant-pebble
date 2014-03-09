Hey there, it looks like you want to setup a vagrant vm to develop pebble code on

This is the right place to look!

Once you're done, you should be able to run:

```
$ vagrant up
$ vagrant ssh
vagrant@precise64:~$ pebble --version
PebbleSDK 2.0.1
```

Yep, that's right. Pebble v2 in a vagrant image.

It's not pretty, so pull requests are happily taken.

Use it at your own risk.

#######
Instructions
#######

- [Install vagrant](https://docs.vagrantup.com/v2/installation/).
    I have `Vagrant 1.4.3` installed. YMMV if you don't have it exactly

- Clone my repo.
    Run:
    ```
    $ git clone https://github.com/shalecraig/vagrant-pebble.git
    $ cd vagrant-pebble
    $ vagrant up
    # wait for 10 min
    $ vagrant ssh
    ```

That's it.
