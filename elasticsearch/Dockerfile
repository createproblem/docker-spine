# FROM elasticsearch:2.4.0
FROM elasticsearch

RUN apt-get install curl \
   && rm -rf /var/lib/apt/lists/*

RUN curl https://raw.githubusercontent.com/DMKEBUSINESSGMBH/typo3-mksearch/8dc71b05f7409beaf9f95f9f8c4e5f3318b8ad11/solr/conf/dictionaryGerman.txt -o /usr/share/elasticsearch/config/dictionaryGerman.txt \
 && /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch x-pack

COPY elasticsearch.yml /usr/share/elasticsearch/config/
