#!/bin/bash
export ENV_HOME=`conda info | grep 'active env location' | awk -F: '{print $2}' | tr -d ' '`
export SPARK_HOME=$ENV_HOME/lib/python3.8/site-packages/pyspark
export PYSPARK_PYTHON=python
export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS="lab"

echo "$ENV_HOME"
echo "$SPARK_HOME"
# pyspark "$@"
pyspark --master local --packages graphframes:graphframes:0.8.1-spark3.0-s_2.12
