case node['platform']
when 'debian', 'ubuntu', 'redhat', 'centos', 'fedora'
  include_recipe 'ks_docker::debian'
when 'windows'
  chocolatey_package 'docker'
else
  Chef::Log.warn "Currently unsupported platform #{node[:platform_family]} to install docker. Would you like to implement your platform? Find the docker recipe in the repo"
end
