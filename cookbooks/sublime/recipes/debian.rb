execute 'Add repo key' do
  command 'wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -'
end

execute 'Add repo source list' do
  command 'echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list'
end

execute 'Update apt repo' do
  command 'apt-get update'
end

package "sublime-text"
