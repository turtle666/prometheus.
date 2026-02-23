FROM prom/prometheus:latest  
RUN rm /etc/prometheus/prometheus.yml  
COPY prometheus.yml /etc/prometheus/prometheus.yml  
EXPOSE 9090  
