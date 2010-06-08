maintainer        "Identitas"
maintainer_email  "cookbooks@identitas.com"
license           "Apache 2.0"
description       "Resque background work item processor"
version           "0.1"

supports "ubuntu"

attribute "resque/redis_password",
  :display_name => "Redis Server Password",
  :description => "Redis Server Password",
  :default => false

attribute "resque/redis_host",
  :display_name => "Hostname for redis-server",
  :description => "The hostname for the redis-server",
  :default => "127.0.0.1"

attribute "resque/redis_port",
  :display_name => "Host port for redis-server",
  :description => "The port for the redis-server host ",
  :default => "6379"

