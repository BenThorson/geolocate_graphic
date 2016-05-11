class { 'nodejs':
  version      => 'stable',
  make_install => false,
}

package { 'git':
  ensure => 'present',
}

package { 'gulp':
  ensure => 'present',
  provider => 'npm',
  require  => Class['nodejs']
}

package { 'bower':
  ensure => 'present',
  provider => 'npm',
  require  => Class['nodejs']
}
