# SSH config. When these values are empty they will default to the values found in the recipe
default['ssh']['user'] = ''
default['ssh']['user_password'] = '' # Change this now or after Chef runs with ssh-keygen -p -f ~/.ssh/id_dsa
default['ssh']['group'] = ''

# inotify
default['system']['inotify']['max_user_watches'] = '524288'