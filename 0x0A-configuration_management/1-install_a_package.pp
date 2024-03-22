#instal flask 1-install_a_package.pp

exec { 'python-installed':
  command => '/usr/bin/which python3',
}

exec { 'pip3 install flask':
  require => Exec['python-installed'],
  unless  => '/usr/bin/pip3 show flask | grep -q "Version: 2.1.0"',
  command => '/usr/bin/pip3 install flask==2.1.0',
}

