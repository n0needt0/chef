#
# Cookbook Name:: help_monitoring
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# This installs ganglia monitor and nagios packages

execute "add-apt-repository ppa:rufustfirefly/ganglia -y" do
  user "root"
end

execute "apt-get update" do
  user "root"
end



package "ganglia-monitor" do
    action :install
end

service "ganglia-monitor" do
    supports :status => true, :restart => true, :reload => true
    action [ :enable, :start ]
end

template "/etc/ganglia/gmond.conf" do
    path "/etc/ganglia/gmond.conf"
    source "gmond.conf.erb"
    variables(
        :cluster_name => node['ganglia']['cluster_name'],
        :send_address => node['ganglia']['send_address'],
        :send_port => node['ganglia']['send_port'],
        :receive_port => node['ganglia']['receive_port'],
        :override_hostname => node['ganglia']['override_hostname']
        )
    notifies :restart, "service[ganglia-monitor]"
end

package "nagios-nrpe-server" do
    action :install
end

service "nagios-nrpe-server" do
    supports :status => true, :restart => true, :reload => true
    action [ :enable, :start ]
end
