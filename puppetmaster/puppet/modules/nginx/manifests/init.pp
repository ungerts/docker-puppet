# Nginx webserver
class nginx {
  package { 'nginx':
    ensure => installed,
  }
}
