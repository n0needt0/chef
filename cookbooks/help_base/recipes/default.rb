#
# Cookbook Name:: help_base
# Recipe:: default
#
# Copyright 2014, helppain

#
# All rights reserved - Do Not Redistribute
#
# This cook book installs basics stuff
#
# install Git, Curl, build -essentials


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

include_recipe 'help_user'