#!/usr/bin/env bash
#
# Installs ElasticSearch and trec_eval
# Should be run from project root.

set -e

rootdir=$(cd `dirname $0/`/.. && pwd)
cd $rootdir

# 1. download ElasticSearch
version=6.5.3
echo "2. Downloading ElasticSearch"
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-${version}.tar.gz
tar -xf elasticsearch-${version}.tar.gz
rm elasticsearch-${version}.tar.gz

# 2. download and compile trec eval
git clone https://github.com/usnistgov/trec_eval.git
cd trec_eval
make
