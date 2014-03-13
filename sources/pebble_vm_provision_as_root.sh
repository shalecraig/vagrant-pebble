# set -e
set -x
cd /home/vagrant
    echo "---------------------------------------------------"
    echo "                   Start as Root                   "
    echo "---------------------------------------------------"
    echo "---------------------------------------------------"
    echo "                     Updating                      "
    echo "---------------------------------------------------"
    sudo apt-get update
    # sudo apt-get upgrade, without the grub prompt :s
    echo "---------------------------------------------------"
    echo "                     Upgrading                     "
    echo "---------------------------------------------------"
    sudo DEBIAN_FRONTEND=noninteractive apt-get --assume-yes --option Dpkg::Options::="--force-confdef" --option Dpkg::Options::="--force-confold" upgrade
    echo "---------------------------------------------------"
    echo "                     Installing                    "
    echo "---------------------------------------------------"
    sudo apt-get install --assume-yes wget tar git-core python2.7-dev python-pip python-virtualenv language-pack-en-base
    echo "---------------------------------------------------"
    echo "               Reconfiguring languages             "
    echo "---------------------------------------------------"
    sudo dpkg-reconfigure locales
    echo "---------------------------------------------------"
    echo "                    Done as Root                   "
    echo "---------------------------------------------------"
