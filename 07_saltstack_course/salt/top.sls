'base':

  '*':
    - motd
    - pkg.openssh.config
    - pkg.openssh.service
    - pkg.salt.minion.service
    - users.sean

  'os:FreeBSD':
    - match: grain
    - repo.freebsd.latest

  'roles:db':
    - match: grain
    - pkg.postgresql
    - pkg.postgresql.config

  'web*':
    - pkg.nginx
    - pkg.nginx.service

  'G@roles:web and G@roles:development':
    - pkg.tmux
    - pkg.vim
