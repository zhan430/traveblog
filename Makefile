git:
	cd /home/ubuntu/traveblog
	git pull

build-image:
	cd /home/ubuntu/traveblog
	docker build --tag=traveblog .

