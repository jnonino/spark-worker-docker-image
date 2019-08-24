# Spark Worker Docker Image

[![](https://img.shields.io/docker/pulls/jnonino/spark-worker)](https://hub.docker.com/r/jnonino/spark-worker/)
[![](hhttps://img.shields.io/docker/build/jnonino/spark-worker)](https://hub.docker.com/r/jnonino/spark-worker/)
[![](https://img.shields.io/docker/automated/jnonino/spark-worker)](https://hub.docker.com/r/jnonino/spark-worker/)
[![](https://img.shields.io/docker/stars/jnonino/spark-worker)](https://hub.docker.com/r/jnonino/spark-worker/)
[![](https://img.shields.io/github/license/jnonino/spark-worker-docker-image)](https://github.com/jnonino/spark-worker-docker-image)
[![](https://img.shields.io/github/issues/jnonino/spark-worker-docker-image)](https://github.com/jnonino/spark-worker-docker-image)
[![](https://img.shields.io/github/issues-closed/jnonino/spark-worker-docker-image)](https://github.com/jnonino/spark-worker-docker-image)
[![](https://img.shields.io/github/languages/code-size/jnonino/spark-worker-docker-image)](https://github.com/jnonino/spark-worker-docker-image)
[![](https://img.shields.io/github/repo-size/jnonino/spark-worker-docker-image)](https://github.com/jnonino/spark-worker-docker-image)

## Run Sparl Worker Node

Before running a Spark Worker Node, you need to have a Spark Master running, please check this docker image for that: https://hub.docker.com/r/jnonino/spark-worker-docker-image/

After having a Spark Master running, to run a Spark Worker node run this command:

    docker run --name spark-worker jnonino/spark-worker-docker-image spark://<SPARK_MASTER_HOST>:<SPARK_MASTER_PORT>

If you have Spark Master running using jnonino/spark-worker-docker-image the values will be:  
- SPARK_MASTER_HOST: The Spark Master container IP.  
- SPARK_MASTER_PORT: 7077
