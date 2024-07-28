all : up

up :
	@docker-compose -f ./srcs/docker-compose.yml up -d --build

down:
	@docker-compose -f ./srcs/docker-compose.yml down

rm_vol:
	@docker volume rm $(shell docker volume ls -q)

rm_img:
	@docker system prune -af --volumes

deleteData:
	@rm -rf /home/zakbouha/data/wordpress/*
	@rm -rf /home/zakbouha/data/database/*
	chmod 777 /home/zakbouha/data/*


fullclean : down rm_img rm_vol deleteData