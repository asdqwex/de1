#
# Cookbook Name:: webhead
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute 'apt-get-update' do
  command 'apt-get update'
end

directory '/var/www/'
directory '/var/www/html/'
directory '/var/www/html/example.com'

for p in [ 'nginx', 'vim', 'screen', 'python', 'ruby', 'curl', 'git', 'ruby-dev', 'libxml2', 'libxslt-dev', 'libxml2-dev', 'ri', 'rdoc', 'irb', 'libruby', 'build-essential' ] do
  package p do
    action [:install]
  end
end

gem_package 'fog' do
  action :install
end

template "/etc/nginx/nginx.conf" do
  source "nginx.erb"
  owner "www-data"
  group "www-data"

end

template "/var/www/html/#{node["nginx"]["sitename"]}/index.html" do
  source "site.erb"
  owner "www-data"
  group "www-data"
end

service 'nginx' do
  action :restart
end
