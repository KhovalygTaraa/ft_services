# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: swquinc <swquinc@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 01:09:12 by hovalygta         #+#    #+#              #
#    Updated: 2020/12/30 05:34:28 by swquinc          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

LABEL maintainer swquinc <swquinc@student.21-school.ru>

RUN apk update && \
	apk upgrade && \
	apk add influxdb

COPY srcs/ .

EXPOSE 8086

VOLUME /var/lib/influxdb

CMD sh influxdb.sh