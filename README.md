LOLcat.org webhead
=========

Recomended utils:

- Knife Rackspace: https://github.com/opscode/knife-rackspace

- OpsCode managed chef: https://manage.opscode.com

How to:

$> git clone https://github.com/asdqwex/de1.git

$> knife upload cookbook webhead

$> knife rackspace server create -N test4 -I 255df5fb-e3d4-45a3-9a07-c976debf7c14 -f performance1-1  -r 'recipe[webhead]'

## knife rackspace server create -N name -I image-uuid -f flavor-name -r 'recipe'
