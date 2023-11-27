# Disable password authentication
file { '/etc/ssh/ssh_config':
  ensure  => present,
  content => "Host 239778-web-01\n\
                  HostName 52.87.235.104\n\
                  User mally13\n\
                  IdentityFile ~/.ssh/school\n\
                  PasswordAuthentication no\n",
}
