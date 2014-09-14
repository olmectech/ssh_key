class ssh_key ($user_data = hiera('data') ) {

  $new_name = $user_data[0]['name']
  $key_new = $user_data[1]['key']
  $hostname_new = $user_data[2]['hostname']
  $type_new = $user_data[3]['type']
  $ssh_name = $user_data[4]['sshname']

ssh_authorized_key { $ssh_name:
  user => $new_name,
  type => $type_new,
  key => $key_new
 }
}
