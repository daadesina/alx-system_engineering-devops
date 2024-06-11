# Change the OS configuration so that it is possible to login with the
# holberton user and open a file without any error message
exec { 'hard-nofile':
  command  => 'sed -i "s+holberton hard nofile 5+holberton hard nofile 5000+g" /etc/security/limits.conf',
  provider => shell,
}
exec { 'soft-nofile':
  command  => 'sed -i "s+holberton soft nofile 4+holberton hard nofile 4000+g" /etc/security/limits.conf',
  provider => shell,
}
