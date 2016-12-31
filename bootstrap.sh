#!/bin/bash

if [ ! -e /bootstrap.lock ]; then
  /php-fpm.sh

  touch /bootstrap.lock
fi

/usr/bin/supervisord -n
