set_unless[:redis][:address]  = "0.0.0.0"
set_unless[:redis][:port]  = "6379"
set_unless[:redis][:dbdir] = "/var/lib/redis"
set_unless[:redis][:dbfile] = "dump.rdb"
set_unless[:redis][:num_databases] = "16"
set_unless[:redis][:client_timeout] = "300"
set_unless[:redis][:glueoutputbuf] = "yes"
set_unless[:redis][:password] = false
set_unless[:redis][:maxclients] = 128
set_unless[:redis][:maxmemory] = false
set_unless[:redis][:loglevel] = "notice" # one of [debug | notice | warning]
set_unless[:redis][:saves] = [["900", "1"], ["300", "10"], ["60", "10000"]]
set_unless[:redis][:slave] = "no"
if redis[:slave] == "yes"
  set_unless[:master_server] = "redis-master." + domain
  set_unless[:master_port] = "6379"
end
set_unless[:sharedobjects] = "no"
if redis[:sharedobjects] == "yes"
  set_unless[:shareobjectspoolsize] = 1024
end
