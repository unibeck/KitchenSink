directory "#{node['local']['source_destination']}"

link "#{ENV['USERPROFILE']}/source" do
  to "#{node['local']['source_destination']}"
end

link "#{ENV['USERPROFILE']}/Documents/WindowsPowerShell" do 
  to "#{node['local']['source_destination']}/github/smurawski/sample-windowspowershell"
end
