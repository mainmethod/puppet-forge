node default {
  class { "htop": }
  class { "imagemagick": }
  class { "git": }
  class { "memcached": 
    max_memory => "15%"
  }
  class { 'apache':  }
  class { "mysql::server": 
    root_password => 'root'
  }
  class { 'php': }
  php::module { "imagick": }
  php::module { "curl": }
  php::module { "memcached": }
  php::module { "mysql": }
  php::module { "apc": 
    module_prefix => "php-"
  }
}