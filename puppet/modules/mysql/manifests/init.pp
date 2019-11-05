class mysql 
{
    $mysqlPassword = "root"
 
    package 
    { 
        "mysql-server":
            ensure  => present,
            require => Exec['apt-get update']
    }

    package
    {
      "mysql-client":
        ensure  => present
    }

    service 
    { 
        "mysql":
            enable => true,
            ensure => running,
            require => Package["mysql-server"];
    }

    exec 
    { 
        "set-mysql-password":
            unless  => 'mysqladmin -uroot -proot status',
            command => "mysqladmin -uroot password root",
            path    => ['/bin', '/usr/bin'],
            require => Service['mysql'];
    }
}