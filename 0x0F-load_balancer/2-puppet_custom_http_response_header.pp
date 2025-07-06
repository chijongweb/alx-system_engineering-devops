# 2-puppet_custom_http_response_header.pp
# Puppet manifest to install and configure Nginx with a custom HTTP response header

package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  subscribe  => File['/etc/nginx/sites-available/default'],
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  mode    => '0644',
  content => template('nginx/custom_header.erb'),
  require => Package['nginx'],
}

file { '/etc/nginx/sites-enabled/default':
  ensure => link,
  target => '/etc/nginx/sites-available/default',
}
