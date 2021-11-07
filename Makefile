DOMAIN = yum3.hatenablog.jp
path = category/name


pull:
	docker-compose run --rm blogsync pull ${DOMAIN}

post:
	docker-compose run --rm blogsync post --title=draft --custom-path=${path} --draft ${DOMAIN} < draft.md
