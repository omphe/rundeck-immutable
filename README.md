Before running the Vagrant provisioning, be sure to install puppet with 
```
apt-get update
apt-get install puppet
```
NB - there's bound to be a more clever way to do that with a preamble script for Vagrant

Before running the Vagrant box, fetch the puppet modules by:

```
cd puppet
bundle exec librarian-puppet install

```



## TODO
- Create a bootstrap script for installing puppet in the Vagrant box
- Switch over to Puppet 4
- Create a Travis CI file and get a test in place (inspec?)
- nginx proxy in front
- Check the gpg signature on the Rundeck repository


