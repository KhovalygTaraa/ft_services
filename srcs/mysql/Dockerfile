# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: swquinc <swquinc@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 01:09:12 by hovalygta         #+#    #+#              #
#    Updated: 2021/01/02 21:00:33 by swquinc          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

LABEL maintainer swquinc <swquinc@student.21-school.ru>

RUN apk update && \
	apk upgrade && \
	apk add mariadb mariadb-client

COPY srcs/ .

EXPOSE 3306

VOLUME /var/lib/mysql

CMD sh mysql.sh