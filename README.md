# Required packages

1. `brew install cmake`
1. `brew install qt@5.5`; add the following to your `.bashrc`: `export PATH="$(brew --prefix qt@5.5)/bin:$PATH"`

## PostgreSQL 9.4

`brew install postgresql@9.4 libpq`

If you need to have this software first in your PATH run:
```
echo 'export PATH="/usr/local/opt/postgresql@9.4/bin:$PATH"' >> ~/.bash_profile
```

For compilers to find this software you may need to set:
```
LDFLAGS:  -L/usr/local/opt/postgresql@9.4/lib
CPPFLAGS: -I/usr/local/opt/postgresql@9.4/include
```

For pkg-config to find this software you may need to set:
```
PKG_CONFIG_PATH: /usr/local/opt/postgresql@9.4/lib/pkgconfig
```

To have launchd start postgresql@9.4 now and restart at login:
```
brew services start postgresql@9.4
```

Or, if you don't want/need a background service you can just run:
```
pg_ctl -D /usr/local/var/postgresql@9.4 start
```

Ruby Bundler: `bundle config build.pg --with-pg-config=/usr/local/opt/postgresql@9.4/bin/pg_config`

## Redis 2.8.24

`brew install redis@2.8`

If you need to have this software first in your PATH run:
```
echo 'export PATH="/usr/local/opt/redis@2.8/bin:$PATH"' >> ~/.bash_profile
```

To have launchd start redis@2.8 now and restart at login:
```
brew services start redis@2.8
```

Or, if you don't want/need a background service you can just run:
```
redis28-server /usr/local/etc/redis28.conf
```

## MySQL 5.5

`brew install  mysql@5.5`

If you need to have this software first in your PATH run:
```
echo 'export PATH="/usr/local/opt/mysql@5.5/bin:$PATH"' >> ~/.bash_profile
```

For compilers to find this software you may need to set:
```
LDFLAGS:  -L/usr/local/opt/mysql@5.5/lib
CPPFLAGS: -I/usr/local/opt/mysql@5.5/include
```

To have launchd start mysql@5.5 now and restart at login:
```
brew services start mysql@5.5
```

Or, if you don't want/need a background service you can just run:
```
/usr/local/opt/mysql@5.5/bin/mysql.server start
```

## Memcached

`brew install memcached`

To have launchd start memcached now and restart at login:
```
brew services start memcached
```

Or, if you don't want/need a background service you can just run:
```
/usr/local/opt/memcached/bin/memcached
```

## Hadoop

`brew install hadoop`

## Hive

`brew install hive`

