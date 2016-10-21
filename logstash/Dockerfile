FROM logstash

WORKDIR /etc/logstash/conf.d/

COPY entrypoint.sh /

RUN mkdir -p /etc/logstash/conf.d/ \
	&& mkdir -p /etc/logstash/patterns.d/ \
	&& chmod +x /entrypoint.sh

COPY conf/* /etc/logstash/conf.d/
COPY patterns/* /etc/logstash/patterns.d/
COPY filebeat-template.json /etc/logstash

EXPOSE 5044

ENTRYPOINT ["/entrypoint.sh"]
CMD ["-f", "/etc/logstash/conf.d/"]
