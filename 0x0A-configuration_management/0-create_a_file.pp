# Puppet code to create a file in /tmp

file { '/tmp/holberton':
  ensure  => 'file',
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0744',
  content => 'I love Puppet'
}
