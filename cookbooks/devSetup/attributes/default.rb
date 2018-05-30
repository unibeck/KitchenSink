# General Chef config
default['kitchen_sink']['user'] = 'jbeckman'
default['kitchen_sink']['group'] = 'jbeckman'

# Java config
default['java']['install_flavor'] = 'openjdk'
default['java']['openjdk_packages'] = [ 'openjdk-8-jre-headless' ]
default['java']['jdk_version'] = '8'

# Intellij Config
default['idea']['version'] = '2018.1.3'
default['idea']['edition'] = 'U'
default['idea']['user'] = node['kitchen_sink']['user']
default['idea']['group'] = node['kitchen_sink']['group']

edition = node['idea']['edition']
version = node['idea']['version']
default['idea']['url'] = "https://download.jetbrains.com/idea/ideaI#{edition}-#{version}.tar.gz"

