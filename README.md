# ssh_key



## Overview

This module copies user's rsa or dsa pub key to other hosts authorized_keys file for promptless login.
This is usefull for services and programs that require promptless login.

### Description
 
 class ssh_key ($user_data = hiera('data') ) {

 - $new_name = $user_data[0]['name']
 - $key_new = $user_data[1]['key']
 - $hostname_new = $user_data[2]['hostname']
 - $type_new = $user_data[3]['type']
 - $ssh_name = $user_data[4]['sshname']

ssh_authorized_key { $ssh_name:
  - user => $new_name,
  - type => $type_new,
  - key => $key_new
 }
}

### What ssh_kwy affects

$HOME/.ssh/authorized_keys



### Beginning with ssh_kwy

This module uses hiera and .yaml files to index data. You will see these files in the repository. Setup
your /etc/puppetlabs/puppet/hiera.yaml file and create hieradata directory in same path. Tar file is 
included also 


