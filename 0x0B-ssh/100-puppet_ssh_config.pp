# Disable password authentication

file { '/etc/ssh/ssh_config':
  ensure  => present,
  content =>"Host 246582-web-01/n/
             HostName 54.237.68.41/n/
	     identityFile ~/.ssh/school/n/
             PasswordAuthentication No"
	     
}
