FROM cnservices/spark-base
LABEL maintainer="Julian Nonino <noninojulian@gmail.com>"

# Spark Worker Port
ENV SPARK_WORKER_PORT 7078
EXPOSE 7078

# Spark Worker Web UI Port
ENV SPARK_WORKER_WEBUI_PORT 8081
EXPOSE 8081

COPY start.sh /usr/local/bin
ENTRYPOINT ["/usr/local/bin/start.sh"]
