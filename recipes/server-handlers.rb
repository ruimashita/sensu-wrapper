#
# Cookbook Name:: sensu-wrapper
# Recipe:: server-handlers
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

sensu_handler "default" do
  type "pipe"
  command "ls"
end
