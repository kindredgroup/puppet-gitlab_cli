# gitlab_cli puppet module

## Overview

This module will install python-gitlab and its dependencies as well as provide the means of configuring
it for defined users.

## Usage

Single user configuration
```
class { 'gitlab_cli':
  owner         => 'root',
  base_path     => '/',
  url           => 'https://gitlab.example.com',
  private_token => 'XXXX'
}
```

Configure python-gitlab for several users
```
class { 'gitlab_cli':
  owner         => ['user1', 'user2'],
  base_path     => '/home',
  url           => 'https://gitlab.example.com',
  private_token => 'XXXX'
}
```
## Requirements

gitlab_cli depends on stankevich-python and requires (but does not install) pip.
