class riemann::download (
  $provider = undef,
  $source = undef,
  $revision = undef,
  $user = undef,
  $destination = "/usr/local/src/riemann-${riemann::version}.tar.bz2",
){
  # include vcsrepo
  # include wget

  # case $provider {
  #   git, hg, cvs, p4: {
  #     vcsrepo { $destination:
  #       ensure => present,
  #       provider => $provider,
  #       source => $source,
  #       revision => $revision,
  #       before => Exec['untar_riemann'],
  #     }
  #   }
  #   default: {
  #     wget::fetch { 'download_riemann':
  #       source      => $source,
  #       destination => $destination,
  #       before      => Exec['untar_riemann'],
  #     }
  #   }
  # }

  # exec { 'untar_riemann':
  #   command => "/bin/tar --bzip2 -xvf /usr/local/src/riemann-${riemann::version}.tar.bz2",
  #   cwd     => '/opt',
  #   creates => "/opt/riemann-${riemann::version}/bin/riemann",
  #   user    => $user,
  #   require => File["/opt/riemann-${riemann::version}"],
  # }
}
