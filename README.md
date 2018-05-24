# KitchenSink

KitchenSink is a workstation provisioning tool used to quickly and easily get a standard and predictable environment. This exact environment should be reproducible and idempotent s.t. running the install one or more times on a fresh or used machine should result in the same environment. 

# Getting Started

0) If you have run this before and you want to make a dependency update you should first delete the generated 
`Berksfile.lock` and `metadata.json` files so Berks can grab the newest dependencies

1) Use git:
```
TODO
```

2) At the root of the project you'll want to run the following command to get the cookbooks dependencies:
```
berks vendor cookbooks -b cookbooks/devSetup/Berksfile
```

3) Then to start the installation process run
```
sudo chef-client -z -o 'devSetup'
```
