include_recipe "redis"
gem_package "resque" do
  action :install
end
