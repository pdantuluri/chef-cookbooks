#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package 'httpd' do 
	action :install
end

service 'httpd' do
	action [:enable, :start]
end

directory ''

template '/usr/share/httpd/noindex/index.html' do 
	source 'index.html'
	owner 'root'
  	group 'root'
  	mode '0755'
end