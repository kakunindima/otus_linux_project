# -*- mode: ruby -*-
# vi: set ft=ruby :
Mashines = {

    :consul1 => {
    },
    :consul2 => {
    },
    :consul3 => {
    },
    :db1 => {
    },
    :db2 => {
    },
    :db3 => {
    },
    :stor1 => {
    },
    :stor2 => {
    },
    :jiralb => {
    },
    :jiralb1 => {
    },
    :jiralb2 => {
    },
    :jira1 => {
    },
    :jira2 => {
    },
    :jira3 => {
    },
    :bml => {
    },
}


Vagrant.configure(2) do |config|
    config.vm.box = "centos/7"
    config.vm.box_version = "1905.1"

    config.vm.define "bml" do |bml|
      bml.vm.provider "virtualbox" do |v|
        v.memory = 128
      end
      bml.vm.network "private_network", ip: "10.0.0.40"
      bml.vm.hostname = "bml"
    end


#    config.vm.define "jira3" do |jira3|
#      jira3.vm.provider "virtualbox" do |v|
#        v.memory = 1152
#      end
#      jira3.vm.network "private_network", ip: "10.0.0.13"
#      jira3.vm.hostname = "jira3"
#    end

    config.vm.define "consul1" do |consul1|
      consul1.vm.provider "virtualbox" do |v|
        v.memory = 256
      end
      consul1.vm.network "private_network", ip: "10.0.0.25"
      consul1.vm.hostname = "consul1"
    end

    config.vm.define "consul2" do |consul2|
      consul2.vm.provider "virtualbox" do |v|
        v.memory = 256
      end
      consul2.vm.network "private_network", ip: "10.0.0.26"
      consul2.vm.hostname = "consul2"
    end

    config.vm.define "consul3" do |consul3|
      consul3.vm.provider "virtualbox" do |v|
        v.memory = 256
      end
      consul3.vm.network "private_network", ip: "10.0.0.27"
      consul3.vm.hostname = "consul3"
    end

    config.vm.define "db1" do |db1|
      db1.vm.provider "virtualbox" do |v|
        v.memory = 256
      end
      db1.vm.network "private_network", ip: "10.0.0.21"
      db1.vm.hostname = "db1"
    end

    config.vm.define "db2" do |db2|
      db2.vm.provider "virtualbox" do |v|
        v.memory = 256
      end
      db2.vm.network "private_network", ip: "10.0.0.22"
      db2.vm.hostname = "db2"
    end

#    config.vm.define "db3" do |db3|
#      db3.vm.network "private_network", ip: "10.0.0.23"
#      db3.vm.hostname = "db3"
#    end

    config.vm.define "stor1" do |stor1|
      stor1.vm.provider "virtualbox" do |v|
        v.memory = 256
      end
      stor1.vm.network "private_network", ip: "10.0.0.31"
      stor1.vm.hostname = "stor1"
    end

    config.vm.define "stor2" do |stor2|
      stor2.vm.provider "virtualbox" do |v|
        v.memory = 256
      end
      stor2.vm.network "private_network", ip: "10.0.0.32"
      stor2.vm.hostname = "stor2"
    end

    config.vm.define "jiralb1" do |jiralb1|
      jiralb1.vm.provider "virtualbox" do |v|
        v.memory = 256
      end
      jiralb1.vm.network "private_network", ip: "10.0.0.4"
      jiralb1.vm.hostname = "jiralb1"
    end

    config.vm.define "jiralb2" do |jiralb2|
      jiralb2.vm.provider "virtualbox" do |v|
        v.memory = 256
      end
      jiralb2.vm.network "private_network", ip: "10.0.0.5"
      jiralb2.vm.hostname = "jiralb2"
    end

    config.vm.define "jira1" do |jira1|
      jira1.vm.provider "virtualbox" do |v|
        v.memory = 1152
      end
      jira1.vm.network "private_network", ip: "10.0.0.11"
      jira1.vm.hostname = "jira1"
    end

    config.vm.define "jira2" do |jira2|
      jira2.vm.provider "virtualbox" do |v|
        v.memory = 1152
      end
      jira2.vm.network "private_network", ip: "10.0.0.12"
      jira2.vm.hostname = "jira2"
    end


    config.vm.provision "shell", inline: <<-SHELL
    mkdir -p ~root/.ssh
    cp ~vagrant/.ssh/auth* ~root/.ssh
    sed -i '65s/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
        systemctl restart sshd
    #sudo yum install -y epel-release
    #sudo yum install -y ansible
    name=`hostname`
    sudo mount -a
    SHELL

    config.vm.provision :ansible do |ansible|
    ansible.inventory_path = "inventories/all.yml"
    ansible.limit = $name
        ansible.playbook = "project.yml"
    end	
  end

