#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "ntp" do 
  action :install
end
 
service "ntp" do
#  supports :status => true, :restart => true
  action [ :enable, :start ]
end
 
template "/etc/ntp.conf" do
  source "ntp.conf"
  group "root"
  owner "root"
  mode "400"
  notifies :restart, "service[ntp]"
end
