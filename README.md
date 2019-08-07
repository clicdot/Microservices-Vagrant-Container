# EDR Micro-Service Container VM

#### v0.1beta

- Install Vagrant https://www.vagrantup.com/downloads.html
- Install VirtualBox https://www.virtualbox.org/wiki/Downloads
- Download Dev VagrantFile from GitHub https://github.com/EDRInc/EDR-Microservice-Vagrant-Container
- Create a folder on your local computer
- Place VagrantFile into folder
- Change to directory created, using terminal 
- Place VagrantFile into folder
- Type "vagrant status" in command line you should see something like this 

```
Current machine states:

default poweroff (virtualbox)

The VM is powered off. To restart the VM, simply run `vagrant up`
```

- Type "vagrant up" 
- Type "vagrant ssh" 
- You app environment will be found in the "/apps" folder

```text
vagrant up
```

```text
vagrant ssh
```

```text
cd /apps/
```

[Confluence Instructions & Info](https://edrnet.atlassian.net/wiki/spaces/C3D/pages/511934793/Microservice+Containers#vagrant)