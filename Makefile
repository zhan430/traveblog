git:
	cd /home/ubuntu/traveblog
	git pull

build-image:
	docker build --tag=traveblog /home/ubuntu/traveblog

