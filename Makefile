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
	@rm -rf ../data/wp/*
	@rm -rf ../data/db/*
	chmod 777 ../data/*


fullclean : down rm_img rm_vol deleteData