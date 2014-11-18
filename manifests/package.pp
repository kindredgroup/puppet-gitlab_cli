# == Class: gitlab_cli::package
#
# Installs python-gitlab package and its dependencies
#
# === Authors
#
# Ilja Bobkevic <ilja.bobkevic@unibet.com>
#
# === Copyright
#
# Copyright 2014 North Development AB
#
class gitlab_cli::package {
  python::pip { 'python-gitlab' : }
}
