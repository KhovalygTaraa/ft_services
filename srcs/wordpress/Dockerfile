# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: swquinc <swquinc@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 01:09:12 by hovalygta         #+#    #+#              #
#    Updated: 2021/01/02 18:09:39 by swquinc          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

LABEL maintainer swquinc <swquinc@student.21-school.ru>

RUN apk update && \
	apk upgrade && \
	apk add nginx supervisor php7 php7-fpm php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json && \
	apk add php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext php7-ldap php7-ctype php7-dom && \
	apk add php7-session php7-phar php7-cli php7-zip php7-iconv php7-xml php7-imap php7-cgi fcgi php7-pdo php7-opcache && \
	wget http://wordpress.org/latest.tar.gz && \
	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	tar xzf latest.tar.gz 

COPY srcs/ .

EXPOSE 5050
CMD sh wp.sh