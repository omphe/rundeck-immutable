node 'rundeck-immutable' {

  include java

  package { 'rundeck':
    source   => 'https://rundeck.bintray.com/rundeck-deb/rundeck-2.7.3-1-GA.deb',
    ensure   => installed,
    provider => dpkg
  }

  
  class { 'rundeck':
    package_ensure => present,
    user           => 'rundeck',
    group          => 'rundeck',
    require        => Package['rundeck']
  }
}
