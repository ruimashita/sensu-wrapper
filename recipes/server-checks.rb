#
# Cookbook Name:: sensu-wrapper
# Recipe:: server-checks
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

sensu_check "ping" do
  command "check-ping.rb"
  handlers ["default"]
  subscribers ["all"]
  interval 5
end
