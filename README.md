# KitchenSink

KitchenSink is a workstation provisioning tool used to quickly and easily get a standard and predictable environment. 
This exact environment should be reproducible and idempotent s.t. running the install one or more times on a fresh or 
used machine should result in the same environment.

## Kitchen Sink Attributes

There are a few attributes it is recommended that you set for finer customization of the setup. These attributes are 
located at the beginning og the `cookbooks/devSetup/attributes/default.rb` file and are prefixed with 
`default['kitchen_sink]`. Some of them may be self explanatory while others will have a comment with the meaning and 
usage of the specific attribute.

## Getting Started

1) Use wget to download and install ChefDK:
```
TODO
```

2) Use wget to get repo and cd into root of project
```
TODO
```

3) At the root of the project you'll want to run the following command to get the cookbooks dependencies:
```
berks vendor berks-cookbooks --berksfile cookbooks/devSetup/Berksfile
```

4) Then to start the installation process run
```
sudo chef-client --local-mode --json-attributes=run-list.json --config=client.rb
```

## Adding/Updating cookbooks

All internal cookbook work should be done in the ./cookbooks directory. When pointing `berks vendor ...` to a specific 
cookbook's `Berksfile`, it will create a directory of all cookbook dependencies, whether they're internal or external. 
Running berks will generate a few things, one of which will be the `Berksfile.lock` file which enforces cookbook 
versions; if you wish to update the cookbook version do so in the `metadata.rb` file, run the `berks vendor ...` command 
, and ensure that the new cookbook version(s) work before updating the repo.

## TODO
openssl
docker
- mysql
monitoring?
vpn
dart
tensorflow
VPN openconnect (Kelmar). Look at command history (maybe theres a community sourced cookbook?)
