# lmod-roll

This package creates a simple Rocks Cluster Roll for adding Lmod support to a Rocks cluster. 

## Install

    $ wget Lmod-%.X.tar.bz2
    $ git clone https://github.com/jjuselius/lmod-roll.git
    $ cd lmod-roll
    $ make
    $ rocks add roll lmod-5.X-0.x86_64.disk1.iso
    $ rocks enable roll lmod
    $ cd /export/rocks/install
    $ make distro

