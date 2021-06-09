# user
mkdir -p /var/ftp
adduser -D -h /var/ftp www
mkdir www
echo "www:www" | chpasswd
chown -R www:www /www

# ssl cert and key
openssl req -x509 -days 365 -nodes \
-newkey rsa:2048 \
-keyout /etc/ssl/ftps.key \
-out /etc/ssl/ftps.crt \
-subj "/C=RU/ST=Moscow/L=Moscow/O=21/OU=swquinc/CN=localhost"

# file
touch	www/Hello
echo "hello" > www/Hello
mv vsftpd.conf /etc/vsftpd/vsftpd.conf
vsftpd etc/vsftpd/vsftpd.conf