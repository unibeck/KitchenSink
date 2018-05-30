user = node['ssh']['user'].to_s.empty? ? node['kitchen_sink']['user'] : node['ssh']['user']
user_password = node['ssh']['user_password'].to_s.empty? ? node['kitchen_sink']['user_password'] : node['ssh']['user_password']
group = node['ssh']['group'].to_s.empty? ? node['kitchen_sink']['group'] : node['ssh']['group']

# ssh
ssh_keygen "/home/#{user}/.ssh/id_rsa" do
  action :create
  owner user
  group group
  strength 4096
  type 'rsa'
  passphrase user_password
  secure_directory true
end

# inotify
max_user_watches = node['system']['inotify']['max_user_watches']

execute 'Remove existing fs.inotify.max_user_watches config' do
    command "sed -i '/fs.inotify.max_user_watches/d' /etc/sysctl.conf"
end

execute 'Add new fs.inotify.max_user_watches config' do
    command "echo fs.inotify.max_user_watches=#{max_user_watches} | tee -a /etc/sysctl.conf"
    not_if { max_user_watches.to_i < 1 }
end

execute 'Update kernel parameters' do
    command 'sysctl -p'
end
