execute 'Add repo sign key' do
  command 'wget -O - https://dl.sinew.in/keys/enpass-linux.key | apt-key add -'
end

execute 'Add repo source list' do
  command 'echo "deb http://repo.sinew.in/ stable main" | tee /etc/apt/sources.list.d/enpass.list'
end

apt_update
package "enpass"
