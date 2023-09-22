#This file will install package puppet-list
package { 'python3-flask':
  ensure => installed,
  version => '2.1.0',
  provider => 'pip3',
}
