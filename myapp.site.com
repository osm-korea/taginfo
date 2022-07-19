---
chdir: "/path/to/taginfo/web"
environment: development
address: 0.0.0.0
port: 3000
timeout: 30
log: "/path/to/taginfo/web/log/thin.log"
pid: tmp/pids/thin.pid
max_conns: 1024
max_persistent_conns: 100
require: []
wait: 30
threadpool_size: 20
servers: 4
daemonize: true
