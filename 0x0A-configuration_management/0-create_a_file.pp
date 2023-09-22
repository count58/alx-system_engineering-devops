#this will create a file school in the /temp
file { '/tmp/school':
  ensure => file,
  mode   => '0744',
  owner  => 'www-data',
  group  => 'www-data',
  content => 'I love Puppet',
}
