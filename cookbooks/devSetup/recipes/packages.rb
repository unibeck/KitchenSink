#
# Cookbook Name:: local
# Recipe:: packages
#
# Copyright 2015 Steven Murawski
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

node['local']['packages'].each do |package|
  powershell_script "Install #{package}" do 
    code <<-EOH
choco install -y #{package}
EOH
    not_if <<-EOH
(choco list -l) -match "#{package}"
EOH
  end
end

node['local']['gems'].each do |gem|
  chef_gem gem do
    compile_time false if respond_to?(:compile_time) 
  end
end