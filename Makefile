PROJECT = "MOJA-BOX"
dir = $(shell pwd)

PATH=${dir}/node_modules/.bin/

golden-path:
	newman --version