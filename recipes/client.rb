#
# Cookbook Name:: sensu-wrapper
# Recipe:: client
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "sensu::default"

sensu_client node.name do
  address node.ipaddress
  subscriptions node.roles + ["all"]
end

include_recipe "sensu::client_service"
