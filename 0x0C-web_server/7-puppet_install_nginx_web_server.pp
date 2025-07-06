# Puppet manifest to install Nginx, serve "Hello World!" at root,
# and create a 301 redirect from /redirect_me

# Ensure nginx is installed and running
package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
  require    => Package['nginx'],
}

# Create the custom index.html with "Hello World!" at root
file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World!',
  require => Package['nginx'],
}

# Configure the redirect and root page using nginx site config
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => @(EOF),
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    root /var/www/html;
    index index.html;

    server_name _;

    location / {
        try_files \$uri \$uri/ =404;
    }

    location = /redirect_me {
        return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
    }
}
  | EOF
  notify  => Service['nginx'],
}
