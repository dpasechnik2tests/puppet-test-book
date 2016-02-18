class ssh::params {
	file { ::$ssh::params::ssh_service_config:
		  ensure => present,
	}


	case $::osfamily {
	  Solaris: {
	  $ssh_package_name = 'openssh'
	}
	  Debian: {
	  $ssh_package_name = 'openssh-server'
	  $ssh_service_config = '/etc/ssh/sshd_config'
	}

	  RedHat: {
	  $ssh_package_name = 'openssh-server'
	  $ssh_service_config = '/etc/ssh/sshd_config'
	}
	  default: {
		fail("Module propuppet-ssh doesnt support osfamily: ${::osfamily}")
	}
	
	}

}
