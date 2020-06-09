MAKEFILE_DIR:=$(dir $(abspath $(lastword $(MAKEFILE_LIST))))

run:
	docker run --rm --name under-maintenance-server \
		-v ${MAKEFILE_DIR}nginx.conf:/etc/nginx/nginx.conf:ro \
		-v ${MAKEFILE_DIR}default.conf.template:/etc/nginx/templates/default.conf.template:ro \
		--env PORT=8080 \
		-p 8080:8080 \
		nginx:1.19.0-alpine

build:
	docker build -t under-maintenance-server ${MAKEFILE_DIR}.
