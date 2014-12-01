# == Class: gitlab_cli
#
# Full description of class gitlab_cli here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { gitlab_cli:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Ilja Bobkevic <ilja.bobkevic@unibet.com>
#
# === Copyright
#
# Copyright 2014 North Development AB
#
class gitlab_cli(
  $base_path      = $::gitlab_cli::params::base_path,
  $owner          = $::gitlab_cli::params::owner,
  $url            = $::gitlab_cli::params::url,
  $private_token  = $::gitlab_cli::params::private_token,
  $ssl_verify     = $::gitlab_cli::params::ssl_verify,
  $timeout        = $::gitlab_cli::params::timeout
) inherits gitlab_cli::params {

  python::pip { 'python-gitlab' : } ->
  gitlab_cli::config { $owner:
    path          => "${base_path}/${name}",
    url           => $url,
    private_token => $private_token,
    ssl_verify    => $ssl_verify,
    timeout       => $timeout
  }

}
