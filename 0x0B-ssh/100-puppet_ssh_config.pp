# Disable password authentication
file { '/etc/ssh/ssh_config':
  ensure  => present,
  content => "246582-web-01\n\
                  HostName 54.237.68.41\n\
                  User jomunene\n\
                  IdentityFile ~/.ssh/school\n\
                  PasswordAuthentication no\n",
}
