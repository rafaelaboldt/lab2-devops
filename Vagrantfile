Vagrant.configure("2") do |config|
  config.vm.box = "generic/rocky9"
  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  config.vm.synced_folder ".", "/vagrant"
  config.vm.provision "shell", path: "provision.sh"

  config.vm.provider "vmware_desktop" do |v|
    v.vmx["memsize"] = "1024"
    v.vmx["numvcpus"] = "2"
  end
end