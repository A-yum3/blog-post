DOMAIN = yum3.hatenablog.jp

pull:
	docker-compose run --rm blogsync pull ${DOMAIN}
