# gitlab_cli puppet module

## Overview

This module will install python-gitlab and its dependencies as well as provide the means of configuring
it for defined users.

## Usage

```
class { 'gitlab_cli':
  owner         => 'root',
  path          => '/root',
  url           => 'https://gitlab.example.com',
  private_token => 'XXXX'
}
```

## Requirements

gitlab_cli depends on stankevich-python and requires (but does not install) pip.
