# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: swquinc <swquinc@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/29 04:45:14 by swquinc           #+#    #+#              #
#    Updated: 2020/12/30 06:24:23 by swquinc          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

RUN apk update && \
	apk upgrade && \
	apk add telegraf --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY srcs/ .

CMD sh telegraf.sh