node 'losttemple.linuxmaster.com' {
#	 include sys_info
}

node 'vm01.linuxmaster.com' {
	include danger_module
}

node /^vm[0-9]+\.linuxmaster.com$/ {
     include vim_upgrade
	 include sshd
	 include danger_module
}

