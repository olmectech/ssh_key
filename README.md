# ssh_key



## Overview

Exported resources allow nodes to share information with each other. This is useful when one node has information that another node needs in order to manage a resource — the node with the information can construct and publish the resource, and the node managing the resource can collect it.

### Description

Every node with the ssh class will export its own SSH host key and then collect the SSH host key of every node (including its own). This will cause every node in the site to trust SSH connections from every other node.
## Setup

### What ssh affects

/etc/ssh/ssh_known_hosts

### Setup Requirements **OPTIONAL**

If your module requires anything extra before setting up (pluginsync enabled,
etc.), mention it here.

### Beginning with ssh

Add the class below to your init.pp file.

## Usage

    class sshkey {
      # Declare:
      @@sshkey { $hostname:
        type => dsa,
        key  => $sshdsakey,
      }
      # Collect:
      Sshkey <<| |>>
    }

