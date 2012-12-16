#
# Cookbook Name:: ack-grep
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "ack-grep" do
  case node[:platform]
  when "centos","redhat","fedora"
    package_name "ack"
  when "debian","ubuntu"
    package_name "ack-grep"
  end
  action :install
end
