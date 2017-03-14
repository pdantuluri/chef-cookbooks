#
# Cookbook Name:: tomcat7
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "tomcat" do
	action :install
end

service "tomcat" do
	action [:enable, :start]
end

