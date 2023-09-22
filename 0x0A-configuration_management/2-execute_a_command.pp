#This code kills a process all together
exec { 'kill_process':
  command => 'pkill killmenow',
}
