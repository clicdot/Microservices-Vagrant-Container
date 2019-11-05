class tools {
    $packages = ['apt-transport-https', 'ca-certificates', 'curl', 'software-properties-common']

    package { $packages:
        ensure => installed,
    }
}
