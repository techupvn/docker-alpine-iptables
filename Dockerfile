FROM babim/alpinebase

## alpine linux
RUN apk add --no-cache wget bash && cd / && wget --no-check-certificate https://raw.githubusercontent.com/babim/docker-tag-options/master/z%20SCRIPT%20AUTO/option.sh && \
    chmod 755 /option.sh && apk del wget
    
COPY entrypoint /

ENTRYPOINT [ "/entrypoint" ]

RUN	set -ex;			\
	apk add --no-cache iptables 
