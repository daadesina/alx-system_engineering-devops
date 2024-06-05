# Kill me now command
exec {'pkill':
  command  => 'pkill killmenow',
  provider => 'shell'
}
