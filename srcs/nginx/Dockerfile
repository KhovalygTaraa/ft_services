# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: swquinc <swquinc@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 01:09:12 by hovalygta         #+#    #+#              #
#    Updated: 2021/01/02 19:48:48 by swquinc          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

LABEL maintainer swquinc <swquinc@student.21-school.ru>

RUN apk update && \
	apk upgrade && \
	apk add openssl openssh nginx supervisor --no-cache

COPY srcs/ .

EXPOSE 80 443 22
CMD sh nginx.sh