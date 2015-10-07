#!/usr/bin/env puma

threads 0, 4
# workers 3

bind  "unix:///var/tmp/blog.sock"
pidfile "/var/run/puma/blog.pid"
# environment "production"
# stdout_redirect "/var/log/puma/blog.log"
# daemonize true
