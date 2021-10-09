docker run -d -v /mnt/vsftpd:/home/vsftpd \
-p 21100-21110:21100-21110 \
-p 21:21 -e FTP_USER=admin -e FTP_PASS=junyang2019 \
-e PASV_ADDRESS=42.194.215.214 \
-e PASV_MIN_PORT=21100 -e PASV_MAX_PORT=21110 \
--name vsftpd --restart=always camkidman/vsftpd
