PROJECT = "Postman"
PATH  := node_modules/.bin:$(PATH)
SHELL := /bin/bash

red:=$(shell tput setaf 1)
grn:=$(shell tput setaf 2)
ylw:=$(shell tput setaf 3)
blu:=$(shell tput setaf 4)
cyn:=$(shell tput setaf 5)
reset:=$(shell tput sgr0)


# TODO: Add some sort of health/sanity check first

fsp-setup:
	$(info $(cyn)[Running FSP-Setup]$(reset))
	newman run \
		--delay-request=2000 \
		--environment=environments/Mojaloop-Local.postman_environment.json \
		OSS-New-Deployment-FSP-Setup.postman_collection.json

golden-path:
	$(info $(cyn)[Running Golden Path]$(reset))
	newman run \
		--delay-request=2000 \
		--environment=environments/Mojaloop-Local.postman_environment.json \
		Golden_Path.postman_collection.json


