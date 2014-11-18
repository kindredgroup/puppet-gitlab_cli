# == Class: gitlab_cli::config
#
# Define configuration resource to allow loops
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
define gitlab_cli::config(
  $path,
  $url,
  $private_token,
  $ssl_verify     = true,
  $timeout        = 5
) {

  file { "$path/.python-gitlab.cfg":
    owner => $name,
    mode  => 0400,
    content => template("${module_name}/python-gitlab.cfg.erb"),
  }

}
