docker run --name mysql57 -v /mnt/mysql57:/var/lib/mysql -v /mnt/mysql57_conf:/etc/mysql -p 3308:3306 -e MYSQL_ROOT_PASSWORD=jw_123456 -d mysql:5.7
