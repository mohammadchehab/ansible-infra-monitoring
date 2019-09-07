LINUX_INSTANCES=2
WINDOWS_INSTANCES=0
Vagrant.configure("2") do |config|
    
    config.vm.provider "virtualbox" do |v|
        v.memory = 256
        v.cpus = 1
    end

    #management node
    config.vm.define "mgmnt" do |node|
        node.vm.box = "ubuntu/trusty64"
        node.vm.network "private_network", ip: "10.0.15.10"
        node.vm.hostname = "mgment"
        node.vm.provision "shell", path: "scripts/setup-mgmnt.sh"
        #node.vm.synced_folder ".", "/vagrant", type: "rsync", rsync__exclude: ".git/"
    end

    # setup linux nodes...
    (1..LINUX_INSTANCES).each do |i|
        config.vm.define "linux-node-#{i}" do |node|
            node.vm.box = "ubuntu/trusty64"
            node.vm.network "private_network", ip: "10.0.16.#{ i + 9 }"
            node.vm.hostname = "linux-node-#{i}"
        end
    end
    #setup windows nodes...
    (1..WINDOWS_INSTANCES).each do |i|
        config.vm.define "win-node-#{i}" do |node|
            node.vm.box = "opentable/win-2012r2-standard-amd64-nocm"
            node.vm.network "private_network", ip: "10.0.17.#{ i + 9 }"
            node.vm.hostname = "win-node-#{i}"
            node.vm.provision "shell", path: "scripts/setup-windows-clients.ps1"
        end
    end
end
