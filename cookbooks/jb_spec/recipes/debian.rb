execute 'Set workspace windows to be independent' do
  command 'gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces true'
end

package "gnome-tweak-tool"
