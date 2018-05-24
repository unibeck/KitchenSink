#
# Cookbook Name:: local
# Recipe:: repositories
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

node['local']['git_repos'].each do |key, value|
  directory "#{node['local']['source_destination']}/github/#{key}" do
    recursive true
  end

  value.each do |repo|
    git "#{node['local']['source_destination']}/github/#{key}/#{repo}" do
      repository "https://github.com/#{key}/#{repo}.git"
      revision 'master'
      checkout_branch 'current'
    end
  end
end