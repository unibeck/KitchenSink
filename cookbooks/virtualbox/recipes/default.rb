case node['platform']
when 'debian', 'ubuntu'
  include_recipe 'virtualbox::debian'
when 'redhat', 'centos', 'fedora'
  Chef::Log.warn "Currently unsupported platform #{node[:platform_family]}. Would you like to implement your platform? Find the sublime cookbook in the repo and follow the README"
when 'windows'
  include_recipe 'virtualbox::windows'
else
  Chef::Log.warn "Currently unsupported platform #{node[:platform_family]}. Would you like to implement your platform? Find the sublime cookbook in the repo and follow the README"
end
