# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.hostname = "geolocate"

  config.vm.network :forwarded_port, guest: 9000, host: 9000
  config.vm.network :forwarded_port, guest: 35729, host: 35729

  # config.ssh.forward_agent = true

  config.vm.provision :shell do |shell|
    shell.inline = "mkdir -p /etc/puppet/modules;
                    puppet module install puppetlabs-apt;
                    puppet module install willdurand/nodejs"
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet"
    puppet.manifest_file  = "site.pp"
  end

end
