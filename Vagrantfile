Vagrant.configure("2") do |config|
  config.vm.box = "opscode-ubuntu-12.04-i386"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04-i386_provisionerless.box"
  config.vm.hostname = "thoughtster-starter"
  config.vm.network :forwarded_port, guest: 8080, host: 9090

  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = true

  config.vm.provision :chef_client do |chef|
    chef.provisioning_path = "/etc/chef"
    chef.chef_server_url = "https://api.opscode.com/organizations/thoughtster"
    chef.validation_key_path = ".chef/thoughtster-validator.pem"
    chef.validation_client_name = "thoughtster-validator"
    chef.node_name = "server"
  end
end
