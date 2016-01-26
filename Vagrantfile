Vagrant.configure("2") do |config|
  config.vm.box = "box-cutter/ubuntu1404-desktop"

  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    # Customize the amount of memory on the VM:
    #vb.memory = "2048"
    #vb.cpus = 2
  end

  #config.vm.network "private_network", type: "dhcp"
  #config.vm.provision "file", source: "./bashrc", destination: "/tmp/bashrc"
  
  # provision
  config.vm.provision 'shell' do |s|
    s.path = 'provision.sh'
  end
end
