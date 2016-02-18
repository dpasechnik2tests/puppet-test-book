class testingtemplates {
	$forif = true
	$servers = ['server1','server2','server3']
	$template = 'testings'

	file {'/tmp/1.txt':
	content => template("testingtemplates/${template}.erb"),
	}
}
