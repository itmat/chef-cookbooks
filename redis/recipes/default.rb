#
# Author:: Benjamin Black (<b@b3k.us>)
# Cookbook Name:: redis
# Recipe:: default
#
# Copyright 2009, Benjamin Black
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


remote_file "/tmp/redis-1.2.6.tar.gz" do
  source 'redis-1.2.6.tar.gz'
end

script "install_redis-server" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
  tar -x -z -f redis-1.2.6.tar.gz
  cd redis-1.2.6
  make
  cp redis-cli redis-server redis-stat /usr/local/bin
  EOH
end

directory @node[:redis][:dbdir] do
  owner "root"
  group "root"
  mode "0755"
  action :create
end

template "/etc/redis.conf" do
  source "redis.conf.erb"
  owner "root"
  group "root"
  mode 0644
end

include_recipe "runit"
runit_service "redis-server"