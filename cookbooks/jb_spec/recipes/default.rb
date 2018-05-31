case node['platform']
when 'debian', 'ubuntu'
  include_recipe 'jb_spec::debian'
else
  Chef::Log.warn "Currently unsupported platform #{node[:platform_family]}. Would you like to implement your platform? Find the jb_spec cookbook in the repo and follow the README"
end
