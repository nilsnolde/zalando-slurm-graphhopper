#!/bin/bash

#SBATCH --mem=64gb
#SBATCH -c 16

export JAVA_OPTS="-server -Xconcurrentio -Xmx40000m -Xms40000m"

java -jar *.jar jetty.resourcebase=webapp config=config-example.properties datareader.file=europe-latest.osm.pbf
