#!/usr/bin/env bash
# This Puppet script configures the SSH client to use a specific private key and disable password authentication

file { '/home/vagrant/.ssh/config':
  ensure => 'file',
  owner  => 'vagrant',
  group  => 'vagrant',
  mode   => '0600',
}

file_line { 'Declare identity file':
  path  => '/home/vagrant/.ssh/config',
  line  => '  IdentityFile ~/.ssh/school',
  match => '^\\s*IdentityFile',
  require => File['/home/vagrant/.ssh/config'],
}

file_line { 'Turn off passwd auth':
  path  => '/home/vagrant/.ssh/config',
  line  => '  PasswordAuthentication no',
  match => '^\\s*PasswordAuthentication',
  require => File['/home/vagrant/.ssh/config'],
}
