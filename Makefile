deploy:
	tar -czvf cs2.cfg.tgz game && \
    scp cs2.cfg.tgz root@109.73.202.61:/var/www/html/cs2.cfg.tgz

restart:
	ssh root@109.73.202.61 "docker compose -f cs2/compose.yml up -d --force-recreate"
