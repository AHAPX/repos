install:
	cp ./gogs/gogs/conf/app.ini.sample ./gogs/gogs/conf/app.ini
	cp ./nginx/conf.d/registry.conf.sample ./nginx/conf.d/registry.conf
	cp ./nginx/conf.d/gogs.conf.sample ./nginx/conf.d/gogs.conf
registry-useradd:
	docker run --entrypoint htpasswd registry:2 -Bbn $(username) $(password) >> ./registry/auth/htpasswd
