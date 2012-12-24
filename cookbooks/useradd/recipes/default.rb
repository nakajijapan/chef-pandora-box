#
# Cookbook Name:: useradd
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user "nakaji" do
  comment "Myself"
  uid 1000
  #gid "nakaji"
  home "/home/nakaji"
  shell "/bin/zsh"
  password ""
end

directory "/var/www" do
  owner "root"
  group "root"
  mode 00755
  action :create
end

user "app" do
  comment "Application Server"
  uid 1001
  #gid "app"
  home "/var/www/app"
  shell "/bin/zsh"
  password ""
end

directory "/var/www/app" do
  owner "app"
  group "app"
  mode 00755
  action :create
end
