FROM prom/prometheus:latest  
RUN rm -f /etc/prometheus/prometheus.yml  
RUN cat > /etc/prometheus/prometheus.yml << 'EOF'  
global:  
  scrape_interval: 15s  
scrape_configs:  
  - job_name: 'prometheus'  
    static_configs:  
      - targets: ['localhost:9090']  
    
  - job_name: 'node-exporter'  
    static_configs:  
      - targets: ['node-exporter:9100']  
EOF  
EXPOSE 9090  
CMD ["--config.file=/etc/prometheus/prometheus.yml", "--storage.tsdb.path=/prometheus"]  
