#
# Cookbook Name:: help_base
# Recipe:: default
#
# Copyright 2014, help
#
#THis cook book installs basics
# All rights reserved - Do Not Redistribute
#
#install Git, Curl, build -essentials


package 'git' do 
    action :install
end

package 'curl' do
    action :install
end

package 'build-essential' do
    action :install
end

package 'python-software-properties' do
    action :install
end

include_recipe 'openssh'

include_recipe 'chef-client::service'

include_recipe 'balanced-user'