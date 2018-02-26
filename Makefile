# The CDash Github Repo
CDASH_URL=https://github.com/Kitware/CDash.git
# CDash is cloned into this directory
CDASH_DIR=CDash

# A project name, that docker-compose uses to group the started
# container together
PROJECT=cdashpg

.PHONY: stop start php postgres enterphp enterpg

default: start

cdash:
	{ test -d $(CDASH_DIR) || git clone $(CDASH_URL); true; } \
		&& (cd $(CDASH_DIR) && git checkout v2.4.0-prebuilt) \
		&& docker-compose build $@

postgres:
	docker-compose build $@

start:
	docker-compose -p $(PROJECT) up -d

stop:
	docker-compose -p $(PROJECT) down

entercdash:
	docker exec -it cdash bash

enterpg:
	docker exec -it postgres bash

# Local Variables:
# compile-command: "make php"
# End:
