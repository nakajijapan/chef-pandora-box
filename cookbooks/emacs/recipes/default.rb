#
# Cookbook Name:: emacs
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node['emacs']['packages'].each do |pkg|

  package pkg do
    case node['platform']
    when "freebsd"
      source "ports"
      action :install
    else
      action :upgrade
    end
  end

end
