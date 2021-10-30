DOMAIN = yum3.hatenablog.jp

pull:
	docker-compose run --rm blogsync pull ${DOMAIN}

post:
	docker-compose run --rm blogsync post --title=draft --draft ${DOMAIN} < draft.md