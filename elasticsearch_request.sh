#!/bin/bash


#create index "my-index" and mapping on my-index
curl -X PUT "http://172.3.27.10:9200/my-index?pretty" -H 'Content-Type: application/json' -d'
{
  "mappings": {
    "properties": {
      "age":    { "type": "integer" },  
      "email":  { "type": "keyword"  }, 
      "name":   { "type": "text"  }     
    }
  }
}
'

# show existing my-index
curl -XGET 'http://172.3.27.10:9200/my-index'?pretty


# Show existing mapping for index
curl -XGET 'http://172.3.27.10:9200/my-index/_mapping?pretty=true'


# delete index
#curl -v -XDELETE '172.3.27.10:9200/my-index?pretty'


#add datas
curl -XPOST 'http://172.3.27.10:9200/my-index/_doc?pretty' -H 'Content-Type: application/json' -d '
{
        "age": "30",
        "email": "s@k",
        "name": "stephane keresztes"
        } '


curl -XPOST 'http://172.3.27.10:9200/my-index/_doc?pretty' -H 'Content-Type: application/json' -d '
{
        "age": "25",
        "email": "v@k",
        "name": "vincent keresztes"
        } '


curl -XPOST 'http://172.3.27.10:9200/my-index/_doc?pretty' -H 'Content-Type: application/json' -d '
{
        "age": "27",
        "email": "c@k",
        "name": "chloé keresztes"
        } '

# find all documents in index
curl -XGET --header 'Content-Type: application/json' 'http://172.3.27.10:9200/my-index/_search?pretty=true' -v


#find data with query
curl -X GET "http://172.3.27.10:9200/my-index/_search?q=age:29&pretty"
curl -X GET "http://172.3.27.10:9200/_search?q=name:kerestes&pretty"
curl -X GET "http://172.3.27.10:9200/my-index/_search?q=name:kere*&pretty"
