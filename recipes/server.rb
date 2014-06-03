#
# Cookbook Name:: sensu-wrapper
# Recipe:: server
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "sensu::default"
include_recipe "sensu::rabbitmq"
include_recipe "sensu::redis"

include_recipe "sensu::api_service"
include_recipe "sensu::dashboard_service"
include_recipe "sensu::server_service"
