FROM prom/prometheus:latest  
RUN rm -f /etc/prometheus/prometheus.yml  
COPY prometheus.yml /prometheus.yml  
EXPOSE 9090  
CMD ["--config.file=/prometheus.yml", "--storage.tsdb.path=/prometheus"]  
