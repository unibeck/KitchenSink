# Java config
default['java']['install_flavor'] = 'openjdk'
default['java']['openjdk_packages'] = [ 'openjdk-8-jre-headless' ]
default['java']['jdk_version'] = '8'

# Intellij Config
default['idea']['version'] = '2018.1.3'
default['idea']['edition'] = 'U'

edition = node['idea']['edition']
version = node['idea']['version']
default['idea']['url'] = "https://download.jetbrains.com/idea/ideaI#{edition}-#{version}.tar.gz"

