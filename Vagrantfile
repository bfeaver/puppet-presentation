# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "debian-wheezy64"
  config.vm.box_url = "http://vagrant.fe.tss/boxes/debian-wheezy64.box"

  config.vm.network :forwarded_port, guest: 80, host: 8888

  config.vm.network :private_network, ip: "192.168.33.10"
  config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |vb|
    # Don't boot with headless mode
    # vb.gui = true

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id,
      "--memory", "1024",
      "--natdnshostresolver1", "on",
    ]
  end
end
