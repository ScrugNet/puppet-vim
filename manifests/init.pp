# /etc/puppet/modules/vim/manifests/init.pp

class vim {

	package { vim:
		ensure	=> latest,
	}

	exec { "update-alternatives --set editor /usr/bin/vim.basic":
		unless	=> "test /etc/alternatives/editor -ef /usr/bin/vim.basic",
	}
}
