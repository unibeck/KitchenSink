case node['platform']
when 'debian', 'ubuntu'
  include_recipe 'monitoring::debian'
else
  Chef::Log.warn "Currently unsupported platform #{node[:platform_family]}. Would you like to implement your platform? Find the monitoring cookbook in the repo and follow the README"
end
