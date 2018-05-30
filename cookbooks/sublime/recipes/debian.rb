execute 'Add repo sign key' do
  command 'wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -'
end

execute 'Add repo source list' do
  command 'echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list'
end

apt_update
package "sublime-text"
