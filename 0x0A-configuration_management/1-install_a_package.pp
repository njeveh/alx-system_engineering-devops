# Using Puppet to install Flask v2.1.0 from pip3

package { 'Flask':
  ensure   => '2.1.0',
  name     => 'flask',
  provider => 'pip3',
  require  => [
    File['pip3'],
    Package['Werkzeug']
  ]
}
file { 'pip3':
  ensure => 'present',
  path   => '/usr/bin/pip3'
}
package { 'Werkzeug':
  ensure   => '2.1.1',
  name     => 'Werkzeug',
  provider => 'pip3',
  require  => File['pip3']
}