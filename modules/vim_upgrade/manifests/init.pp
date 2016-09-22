class vim_upgrade {
	package { 'vim' :
		ensure => '2:7.4.1689-3ubuntu1.1',
	}

	file { 'vimrc' :
		name => '/home/administrator/.vimrc',
		owner => administrator,
		group => administrator,
		mode => 666,
		source => 'puppet:///modules/vim_upgrade/.vimrc',
		require => Package['vim'],
	}
}
