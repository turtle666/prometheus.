FROM quay.io/prometheus/node-exporter:latest

LABEL "language"="go"

# Create the textfile collector directory in a writable location
# Use /tmp or a directory under the node_exporter user's home
RUN mkdir -p /tmp/node_exporter && \
    chmod 777 /tmp/node_exporter

# Set the entrypoint to run node_exporter with the textfile collector directory
ENTRYPOINT ["/bin/node_exporter", "--collector.textfile.directory=/tmp/node_exporter"]

EXPOSE 9100
