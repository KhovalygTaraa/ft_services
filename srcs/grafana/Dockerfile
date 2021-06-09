# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: swquinc <swquinc@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/12/30 00:11:15 by swquinc           #+#    #+#              #
#    Updated: 2020/12/30 02:59:39 by swquinc          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM alpine

RUN apk update && \
	apk upgrade && \
	apk add grafana --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community/

COPY srcs ./

EXPOSE 3000

CMD sh grafana.sh