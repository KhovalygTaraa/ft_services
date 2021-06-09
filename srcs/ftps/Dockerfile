# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: swquinc <swquinc@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/27 02:55:39 by swquinc           #+#    #+#              #
#    Updated: 2021/01/02 04:23:04 by swquinc          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

LABEL maintainer swquinc <swquinc@student.21-school.ru>

RUN apk update && \
	apk upgrade && \
	apk add openssl vsftpd 

COPY srcs/ .

EXPOSE 20 21 2121

CMD sh ftps.sh