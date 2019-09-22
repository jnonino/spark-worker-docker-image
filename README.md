# Spark Worker Docker Image

[![](https://img.shields.io/docker/pulls/cnservices/spark-worker)](https://hub.docker.com/r/cnservices/spark-worker/)
[![](hhttps://img.shields.io/docker/build/cnservices/spark-worker)](https://hub.docker.com/r/cnservices/spark-worker/)
[![](https://img.shields.io/docker/automated/cnservices/spark-worker)](https://hub.docker.com/r/cnservices/spark-worker/)
[![](https://img.shields.io/docker/stars/cnservices/spark-worker)](https://hub.docker.com/r/cnservices/spark-worker/)
[![](https://img.shields.io/github/license/cn-docker/spark-worker)](https://github.com/cn-docker/spark-worker)
[![](https://img.shields.io/github/issues/cn-docker/spark-worker)](https://github.com/cn-docker/spark-worker)
[![](https://img.shields.io/github/issues-closed/cn-docker/spark-worker)](https://github.com/cn-docker/spark-worker)
[![](https://img.shields.io/github/languages/code-size/cn-docker/spark-worker)](https://github.com/cn-docker/spark-worker)
[![](https://img.shields.io/github/repo-size/cn-docker/spark-worker)](https://github.com/cn-docker/spark-worker)

## Run Sparl Worker Node

Before running a Spark Worker Node, you need to have a Spark Master running, please check this docker image for that: https://hub.docker.com/r/cnservices/spark-worker/

After having a Spark Master running, to run a Spark Worker node run this command:

    docker run --name spark-worker cnservices/spark-worker spark://<SPARK_MASTER_HOST>:<SPARK_MASTER_PORT>

If you have Spark Master running using cnservices/spark-worker the values will be:  
- SPARK_MASTER_HOST: The Spark Master container IP.  
- SPARK_MASTER_PORT: 7077
