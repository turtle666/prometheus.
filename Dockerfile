FROM alpine:latest  
RUN apk add --no-cache prometheus  
COPY prometheus.yml /etc/prometheus/prometheus.yml  
EXPOSE 9090  
CMD ["prometheus", "--config.file=/etc/prometheus/prometheus.yml", "--storage.tsdb.path=/prometheus"]  
