# install package
package { 'python3-pip':
  ensure => installed,
}

exec { 'flask_install':
  command     => '/usr/bin/pip3 install Flask==2.1.0',
  refreshonly => true,
}

package { 'flask':
  ensure   => installed,
  provider => pip3,
  require  => Exec['flask_install'],
}
