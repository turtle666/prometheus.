FROM quay.io/prometheus/node-exporter:latest  
LABEL "language"="go"  
RUN mkdir -p /var/lib/node_exporter && chmod 755 /var/lib/node_exporter  
ENTRYPOINT ["/bin/node_exporter", "--collector.textfile.directory=/var/lib/node_exporter"]  
EXPOSE 9100  
