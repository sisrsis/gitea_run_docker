source config.env
mkdir config
mkdir data
sudo docker network create  giteas
sudo docker run --name mariadb       --network giteas -p 3306:3306 -e MARIADB_ROOT_PASSWORD=$MYSQL_root_password   -d  --restart unless-stopped mariadb
sudo docker run  --name gitea   -v  ./data:/data/ -v ./config:/etc/gitea  -p 3000:3000 -p 2222:2222  -e GITEA__database__DB_TYPE=mysql --net giteas -e GITEA__database__HOST=mariadb:3306 -e GITEA__database__NAME=gitea  -e GITEA__database__USER=root -e  GITEA__database__PASSWD=$MYSQL_root_password -d --restart unless-stopped  gitea/gitea
sleep 10
mysql -u root -p --password=$MYSQL_root_password  --port=3306 --protocol=TCP    < user.sql;
