#
# Cookbook Name:: deploy
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apache::default'
include_recipe 'tomcat7::default'

template '/usr/share/tomcat/webapps/sampleApp/index.html' do
	source 'index1.html'
	owner 'root'
  	group 'root'
  	mode '0755'	
end

service 'tomcat' do
	action :restart
end
