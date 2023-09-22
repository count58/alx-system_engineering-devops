package { 'python3-pip':
  ensure => installed,
}

package { 'python3-flask':
  ensure => installed,
  version => '2.1.0',
  provider => 'pip3',
}
