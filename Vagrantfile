# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/bionic64"

  config.vm.provider :virtualbox do |vb|
    vb.name = "devms"
    vb.customize [
      "modifyvm", :id,
      "--memory", "4096",
      "--cpus", "2",
      "--ioapic", "on"
      ]
    end

  config.vm.hostname = "devms.dev"

  config.vm.synced_folder "apps", "/apps"
  config.vm.synced_folder "pkgs", "/pkgs"

  config.vm.provision :shell, :inline => "echo \"America/Chicago\" | sudo tee /etc/timezone && dpkg-reconfigure --frontend noninteractive tzdata"

  config.vm.network :private_network, ip: "192.168.50.200", auto_correct: true
  # config.vm.network :public_network

  # Puppet
  config.vm.provision :"shell" do |sh|
    sh.path = "provision/shell/puppet.sh"
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.module_path = 'puppet/modules'
    puppet.manifest_file = "base.pp"
  end

  # ruby
  config.vm.provision :shell do |sh|
    sh.path = "provision/shell/ruby.sh"
  end

  # node
  config.vm.provision :shell do |sh|
    sh.path = "provision/shell/node.sh"
  end

  # python
  config.vm.provision :shell do |sh|
    sh.path = "provision/shell/python.sh"
  end

  # docker
  config.vm.provision :shell do |sh|
    sh.path = "provision/shell/docker.sh"
  end

  # dotnet
  config.vm.provision :shell do |sh|
    sh.path = "provision/shell/dotnet.sh"
  end

  # kudectl
  config.vm.provision :shell do |sh|
    sh.path = "provision/shell/kuber.sh"
  end

  # ngrok
  config.vm.provision :shell do |sh|
    sh.path = "provision/shell/ngrok.sh"
  end

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
