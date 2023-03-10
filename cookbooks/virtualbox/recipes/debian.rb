execute 'Add first repo sign key' do
  command 'wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | apt-key add -'
end

execute 'Add second repo sign key' do
  command 'wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -'
end

execute 'Add repo source list' do
  command 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | tee /etc/apt/sources.list.d/virtualbox.list'
end

apt_update
package "virtualbox"
