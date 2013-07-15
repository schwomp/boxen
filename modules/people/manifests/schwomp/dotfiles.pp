class people::schwomp::dotfiles{
    $home = "/Users/${::boxen_user}"
    $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"
    repository { $dotfiles_dir:
      source => "${::github_login}/dotfiles"
    }

    file { "${home}/.vim":
      ensure  => link,
      target  => "${dotfiles_dir}/vim",
      require => Repository[$dotfiles_dir]
    }

    file { "${home}/.zshrc":
      ensure  => link,
      target  => "${dotfiles_dir}/zshrc",
      require => Repository[$dotfiles_dir]
    }

    file { "${home}/.vimrc":
      ensure  => link,
      target  => "${dotfiles_dir}/vimrc",
      require => Repository[$dotfiles_dir]
    } 
    file { "${home}/.emacs.d":
      ensure  => link,
      target  => "${dotfiles_dir}/emacs.d",
      require => Repository[$dotfiles_dir]
    }
    file { "${home}/.slate":
      ensure  => link,
      target  => "${dotfiles_dir}/slate",
      require => Repository[$dotfiles_dir]
    }
    file { "${home}/.slate.js":
      ensure  => link,
      target  => "${dotfiles_dir}/slate.js",
      require => Repository[$dotfiles_dir]
    }
    file { "${home}/Library/Application Support/KeyRemap4Macbook/private.xml":
      ensure => link,
      target => "${dotfiles_dir}/configs/private.xml",
      require => Repository[$dotfiles_dir],
    }
}