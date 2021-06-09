# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: swquinc <swquinc@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 01:09:12 by hovalygta         #+#    #+#              #
#    Updated: 2021/01/02 20:00:53 by swquinc          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

RUN apk update && \
	apk upgrade && \
	apk add nginx php7 php7-fpm php7-opcache php7-gd php7-mysqli php7-gettext && \
	apk add supervisor php7-zlib php7-curl php7-mbstring php7-json php7-session php7-zip && \
	wget http://files.directadmin.com/services/all/phpMyAdmin/phpMyAdmin-5.0.2-all-languages.tar.gz && \
	tar xfz phpMyAdmin-5.0.2-all-languages.tar.gz 

COPY srcs/ .

EXPOSE 5000
CMD sh phpmyadmin.sh