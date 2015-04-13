SHELL := /bin/zsh
PLATFORM_PATH := /web/platform
SOLR_PID_PATH := /web/platform/solr/pids/development/sunspot-solr-development.pid
HOME_URL := http://platform.dev

all: nginx mysql redis sunspot memcached rabbitmq unicorn
	open $(HOME_URL)

stop: stop_nginx stop_redis stop_sunspot stop_memcached stop_unicorn stop_mysql

mysql:
	mysql.server start
stop_mysql:
	-mysql.server stop

redis: stop_redis
	redis-server ~/.redis/redis.conf
stop_redis:
	pidof -k redis-server

sunspot: stop_sunspot
	cd $(PLATFORM_PATH) && bundle exec rake sunspot:solr:start RAILS_ENV=development
stop_sunspot:
	-cd $(PLATFORM_PATH) && [ -f $(SOLR_PID_PATH) ] && bundle exec rake sunspot:solr:stop RAILS_ENV=development

memcached:
	memcached &
stop_memcached:
	pidof -k memcached

nginx: stop_nginx
	sudo nginx -c $(PLATFORM_PATH)/config/nginx/nginx.conf
stop_nginx:
	-sudo nginx -c $(PLATFORM_PATH)/config/nginx/nginx.conf -s stop

rabbitmq: stop_rabbitmq
	rabbitmq-server -detached

stop_rabbitmq:
	-rabbitmqctl stop

unicorn: stop_unicorn
	cd $(PLATFORM_PATH) && bundle exec unicorn -c config/unicorn/unicorn.rb -D

stop_unicorn:
	-kill -s TERM `cat $(PLATFORM_PATH)/log/unicorn*.pid`

# runs unicorn in the foreground. Useful when using `binding.pry`
# FIXME: does not work (unicorn forks and shit)
# unicorn_fg: stop_unicorn
# 	cd $(PLATFORM_PATH) && bundle exec unicorn -c config/unicorn/unicorn.rb
