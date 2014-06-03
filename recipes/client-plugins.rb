#
# Cookbook Name:: sensu-wrapper
# Recipe:: client-plugin
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


# Installing check-ping
gem_package "net-ping" do
  gem_binary "/opt/sensu/embedded/bin/gem" if node['sensu']['use_embedded_ruby']
end
remote_file "/etc/sensu/plugins/check-ping.rb" do
  source "https://raw.githubusercontent.com/sensu/sensu-community-plugins/master/plugins/ping/check-ping.rb"
  mode 0755
end

service "sensu-client" do
  action :restart
end
